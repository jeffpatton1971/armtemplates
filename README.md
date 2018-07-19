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

## Create Build Definition

## Create Release Definition

### Setup Artifacts

### Create Environments

#### Setup Environment

#### Test Envrironmnet

#### Build Environments

#### Final Environment