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

Branching within VSTS is also very straightforward. In the menu to the right of your repo name is an item labeled Branches, click that.
- Click New Branch
- Provide a name
- choose to which branch to base this branch from (master is assumed)
- Click Create Branch

Again, like forks, there is no convention, but for clarity it makes sense to label the branch with the ticket numer. In customers with several builds it can be daunting to have to navigate several different folders in order to find what you are looking for. This allows you the ability to keep all the files related to this specific build in one location.

#### Examples
The Mckesson repo is setup in this fashion and has several forks, each for represents a specific application. This has been done to accomodate specific needs of the customer with regards to access within Core.

## Clone Repository

## Clone Build Templates

## Edit Template Files

## Create Build Definition

## Create Release Definition

### Setup Artifacts

### Create Environments

#### Setup Environment

#### Test Envrironmnet

#### Build Environments

#### Final Environment