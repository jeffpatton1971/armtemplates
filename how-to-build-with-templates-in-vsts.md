# How to build with Templates in VSTS

## Repository Setup
The repository is where all the work happens, this is where you store our files and any pertinent information for a given build. It may be worth considering when you create your repository (repo), to create a fork for each device, and within that fork create a branch for each ticket build ticket worked against that device.

The name of the repo should follow our naming convention to make things easier to find.

rsusbuild | rsukbuild | rsaubild 

Then Customer Name, followed by account name.

rsusbuild-mckesson-828148

It may be worth creating a Readme file within that repository to give a basic idea of what the customer is doing and how you are setting up the repo.

#### Forking

Creating a fork in VSTS is very simple
- Click Fork (upper right of screen next to clone)
- Provide a name
- Click fork

There is no defined naming convention, but it makes sense to extend what we already have for repo names by adding the specific device to the end:

rsusbuild-mckesson-828148-943889

#### Branching

Branching within VSTS is also very straightforward. In the menu to the right of your repo name is an item labeled Branches, click that. You can also create a branch within Visual Studio, or using GIT.
- Click New Branch
- Provide a name
- choose to which branch to base this branch from (master is assumed)
- Click Create Branch

Again, like forks, there is no convention, but for clarity it makes sense to label the branch with the ticket numer. In customers with several builds it can be daunting to have to navigate several different folders in order to find what you are looking for. This allows you the ability to keep all the files related to this specific build in one location.

#### Examples
The Mckesson repo is setup in this fashion and has several forks, each for represents a specific application. This has been done to accomodate specific needs of the customer with regards to access within Core.

### Clone Repository
Once you have your repo setup, it's time to clone it so you can start working. The simplest way is to click Clone in the upper right corner of the display. This brings up a display that allows you to clone using GIT or Visual Studio. For the purposes of this document we will assume you have downloaded and installed the latest version of Visual Studio Community Edition, as that's all you will need.
- Click Clone in Visual Studio
- Once Visual Studio loads, click clone

It's not the purpose of this document to go over all the details of how this works, there are excellent materiasl online for that. Needless to say, your repo will not be copied to your local hard drive, wherever your chose to place it.

### Clone Build Templates
It will be worth your time to clone the build template repo as well, so you can quickly grab files you need locally before you begin your build.

rsazure-internal-buildtemplates

This repo contains the templates that you need to deploy an environment to Azure. There are no SAS keys to deal with, no complex nested templates with crazy dependencies on other templates.

The idea of the build templates repository is that  we need a template to deploy a resource, without having it's own internal idea of how things should be connected or wired up. We handle the connections as part of the release, using additional templates or scripts to wire the resources to each other.

There are several branches to choose from as of this writing there are 4

- stg (don't use)
- dev 
- master
- 2018.07.01.0 (locked)

If you're not sure, use master, it will always have the "current" version of supported templates available. As we progress in our lifecycle you will see additional locked repos that resemble api versions. These are the state of our templates over time, as the API changes so to must our templates change. If for some reason you need to go back to some previous set of templates, you can very easily do this by selecting the appropriate branch.

## Edit Template Files
You will want to grab the parameter files from the build templates for the various resources you wish to deploy. One technique that may be worth exploring is naming your parameter file for the resource you are deploying, we'll cover the reason when we talk about Release Definitions. While you can grab the templates and edit them as well, we are trying to get to a place where the only thing we need to edit in this method are the parameter files.
As you being working on your build, it may be worth considering taking advantage of the build schema that we have defined. This provides you with a document that can be processed with an available powershell module to quickly create ticket updates, runbooks, and customer email content. Additionally using the build schema gives you a single document that becomes your source of truth for the lifecycle of your entire build.

- rsazure-internal-buildschema
- rsazure-interna-builddocument

## Create Build Definition
The build definition has a simple role, get the template files onto the agents for the release. We have removed the testing from this portion of the build to make things simpler to get started. There should be a sample build definition that you can clone/import if you wish, but the basic items are:

- A PowerShell task to zip your files
- A CopyFiles task to copy the zip archive
- A PublishFiles task to publish the archive to the agents
- A DeleteFiles task to clean everything up

## Create Release Definition
The release definition is composed of Artifacts and Environments. The best way to think of these is Artifacts are things you need in order to complete your build and Environments are the resources you are deploying into Azure.

### Setup Artifacts
The first thing you will want to do is setup your Artifacts, and the first artifact should be your build, additionally this should always be the Primary Artifact. In a release that has several artifacts this will show up in the details of the specific artifact you have selected.
In addition to the Build Artifact, you will want to include the template repository and the scripts repository, these are both GIT Artifacts and you will want to grab the master branch.

- Build Artifact (Mark Primary)
- rsazure-internal-buildscripts
- rsazure-internal-buildtemplates

You may have more or fewer artifacts, but you will always need the Build Artifact. The Build Artifact contains the zip file that was created in your build pipeline.

### Create Environments
As stated earlier the environments are selfcontained resources that are a part of your deployment. For our purposes the bulk of the environments will be individual resources that are being deployed into Azure, for example a Virtual Machine or a Load balancer. There are several environment templates to choose from, that should handle most aspects of getting a specific resource configured properly.
Each environment can be linked to form a chain, this allows you to deploy some resources before others, say deploy a Recovery Vault before you deploy your Virtual Machines. This also provides a way to have several resources deployed alongside each other, for example after your Recovery Vault is deployed your Virtual Machines can all be set to trigger after that environment is complete. There are several examples of how this works, for reference you can view some of the McKesson releases

- 180629-07651-ETS-Atlassian-Suite-Production
- 180705-03233-Llamasoft-Prd

There are some special environments that we use that we will cover here, and we will go over a basic VM environment so you get a feeling for how these work.

#### Setup Environment
This environment would have at least one task, it will extract the zip'd build archive onto the agent for deployment.

- An ExtractFiles task to extract the zip file to a folder

#### Test Envrironmnet
As you can see, testing has been moved into the release. This provides us the ability to use a single source for all test scripts that should be run against your templates, there are examples of these to choose from as well but they have some things in common:

- A PowerShell task to run jsonLint against your templates to validate proper json
- An Azure PowerShell task that will run a pester test against your templates

#### Build Environments
As we mentioned earlier, the Environments can be thought of as Azure resources. Each one contains all the templates and code required to sucessfully deploy that resource into Azure. We will look at a simple VM environment

- An Azure ResourceGroup Deployment task, to deploy your Virtual Machine into Azure
- An Azure PowerShell task to change the network interface from dynamic to static
- An Azure PowerShell task to mount and format each data disk
- An Azure ResourceGroup Deployment task to add your Virtual Machine to a Recovery Vault
- An Azure PowerShell task to apply patches/updates to your Virtual Machine
- An Azure PowerShell task to add additional user accounts
- An Azure PowerShell task to add users and groups to local groups 

As you can see there are several pieces involved with deploying a Virtual Machine and this simple Environment covers most. You are welcome to add anything you like to suite the needs of your build.

#### Final Environment
The Final Environment contains a DeleteFiles task that cleans up the agent before we're done.