# openAccessOnContainers
Microservices Training Application.

# Microservices (will be updated)
- Catalog (with .netcore, possibly DDD)
- Identity (with .netcore)

# Apps (will be updated)
- WebSPA (with React + Hooks, Typescript, Material-UI)
- Mobile app with React.Native
- WebStatus app with React (with React + Hooks, Typescript, Material-UI)

## How to run the application

1. Clone master branch to wherever you want.
2. Switch to the location where you cloned master branch on your docker console.
2. To start the application, run this command: <code>docker-compose -f "docker-compose.debug.yml" up -d --build</code> on your docker console.
3. To test the webspa frontend of the application, open <code>localhost:9229</code> in your browser.
4. To stop the application, run this command: <code>docker-compose -f "docker-compose.debug.yml" down</code>

## Notes for myself

### Workflow for adding submodules
1. git submodule add -b <branch_name> <https://github.com/submodul>
2. git commit -m "comment"
3. git push origin master
4. git submodule update --init --recursive --remote

### Workflow for getting updates from submodules
1. Switch to dev branch.
2. <code>git pull origin master</code> to get latest direct changes on master branch
3. <code>git submodule foreach git pull origin master</code>
4. <code>git submodule foreach git checkout master</code>
5. <code>git add .</code>
6. <code>git commit -m "get latest updates from submodules"</code>
7. <code>git push origin dev</code>
8. Create pull request to qa branch
9. Review and merge pull request on qa branch.
10. Run integration tests
11. Create pull request to dev if integration tests not failed.
12. Merge pull request on dev branch.
13. Create pull reqest to master branch if the milestone features completed.
14. Merge pull request on master branch.

## Workflow for main module (this module) 
1. Switch to dev branch.
2. <code>git pull origin master</code> to get latest direct changes on master branch
3. <code>git branch -a <feature_name></code> to create new feature branch.
4. Switch to feature branch.
5. Work on this branch until feature finished.
6. Create pull request to qa branch
7. Review and merge pull request on qa branch.
8. Ru unit tests
5. Run integration tests if unit tests passed.
6. Create pull request to dev if integration tests not failed.
7. Merge pull request on dev branch.
8. Create pull reqest to master branch if the milestone features completed.
9. Merge pull request on master branch.