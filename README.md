# openAccessOnContainers

I've started this application as a part of my Microservices training. It's planned as covering all topics in microservices, including frontend, backend, virtualization, orchestration.

The main idea of the application is coming from Open Access Repositories for Academic publications. It will be a kind of hub for accessing different open access repositories. These repositories have different softwares, different  interfaces. With this app, researchers will find what they are looking for. Also, they will be able to organize their researchs in this app. 

The project is at an early stage. So it is not yet suitable for collaboration. I will consider this topic after a while.

## Technical Requirements
- Each microservice and app should have its own repository.
- Each microservice and app should be able to be developed alone.
- Each microservice and app should be able to be live tested alone.
- Integration should be made by environment configuration files.
- All rest api (client or server) submodules should get api definition from main(this) module.
- Developers are responsible for apps, not backend, frontend, db etc.
- After first release, app should be able to be deployed on Azure.

## Apps
- WebSPA -> https://github.com/huseyindeniz/oar.apps.webspa
- Mobile App -> https://github.com/huseyindeniz/oar.apps.mobile
- WebMVC App ->
- WebStatus App ->

## API Gateways
- Web -> https://github.com/huseyindeniz/oar.apigateways.web
- Mobile -> https://github.com/huseyindeniz/oar.apigateways.mobile

## Microservices
- Catalog -> https://github.com/huseyindeniz/oar.services.catalog
- Identity ->
- Authors ->
- Institutions ->
- Publishers ->

## EventBus
- EventBus -> https://github.com/huseyindeniz/oar.eventbus

## How to Run the Application

1. Clone the master branch with <code>--recursive</code> flag to wherever you want.
2. Switch to the location where you cloned the master branch on your docker console.
2. To start the application, run this command: <code>docker-compose -f "docker-compose.debug.yml" up -d --build</code> on your docker console.
3. To test the webspa frontend of the application, open <code>localhost:13003</code> in your browser.
4. To stop the application, run this command: <code>docker-compose -f "docker-compose.debug.yml" down</code>

## CI/CD

### Branches
1. <b>master</b>: Main branch for the releases.
    - Never changes directly. 
    - Accepts merges with the dev.
2. <b>dev</b>: Branch the most closest to master.
    - Never changes directly. 
    - Accepts merge with the qa. 
    - Sends PRs to the master.
3. <b>qa</b>: Quality assurance branch for testing.
    - Never changes directly. 
    - Accepts merge with feature or bug branches. 
    - Sends PRs to the dev.
4. <b>feature*</b> : Main development branches. 
    - Cuts from the dev.
    - Accepts merge with the dev.
    - Sends PRs to the qa.
5. <b>bug*</b>: Bug fix branches. 
    - Cuts from the dev. 
    - Accepts merge with the dev.
    - Sends PRs to the qa.
6. <b>hotfix</b>: Hot bug fix branches. 
    - Cuts from the master. 
    - Sends PRs to the master.

### Actions
... will be updated.

## Teams

### API Design Team

#### Prerequsities for the developer machine
1. Docker should be installed.
2. Nodejs should be installed.
3. Git Bash or any terminal that supports Docker and be able to run sh files should be present.
4. Recommended ide is vscode.

#### Workflow for adding submodules
1. git submodule add -b <branch_name> <git_address_of_submodule>
2. git commit -m "comment"
3. git push origin master
4. git submodule update --init --recursive --remote

#### Workflow for main module (this module) 
1. Switch to dev branch.
2. <code>git pull origin master, git merge master</code> to get latest direct changes on master branch. -optional
3. <code>git branch -a <feature_name/bug_name></code> to create new feature/bug branch.
4. Switch to feature/bug branch.
5. Work on this branch until feature/bug finished.
6. Create pull request to qa branch.
7. Review and merge PR on qa branch.
8. Run integration tests.
9. Create PR to dev if integration tests successful.
10. Merge PR on dev branch.
11. Create PR to master branch if the milestone features completed.
12. Merge PR on master branch.

#### Workflow for getting updates from submodules
1. Switch to dev branch. -optional
2. <code>git pull origin master, git merge master</code> to get latest direct changes on master branch -optional
3. Switch to qa branch.
4. <code>git pull origin dev, git merge dev</code> to get latest direct changes on dev branch. -optional
5. <code>git submodule foreach git checkout master</code>
6. <code>git submodule foreach git pull origin master</code>
7. <code>git add .</code>
8. <code>git commit -m "get latest updates from submodules"</code>
9. <code>git push origin qa</code>
10. Run integration tests.
11. Create a PR to dev if integration tests successful.
12. Merge the PR on dev branch.
13. Create a PR to master branch if the milestone features completed.
14. Merge the PR on master branch.

#### Workflow for sending updates to submodules
1. Merge changes which effects submodules to master branch with main module workflow.
2. Switch to master branch.
3. <code>git submodule foreach git checkout dev</code>
4. <code>git submodule foreach git pull origin dev</code>
5. <code>git submodule foreach git add .</code>
6. <code>git submodule foreach git commit -m "get changes from main module"</code>
7. <code>git submodule foreach git push origin dev</code>
8. Wait till all submodules integrate changes to their master branches.
8. <code>git add .</code>
9. <code>git commit -m "latest updates sent to submodules"</code>
10. <code>git push origin master</code>

#### QA TEAM

#### Prerequsities for the tester machine
1. Docker should be installed.
2. Nodejs should be installed.
3. Git Bash or any terminal that supports Docker and be able to run sh files should be present.