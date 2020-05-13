# openAccessOnContainers
.Microservices Training Application.

## Workflow for adding submodules
1. git submodule add -b <branch_name> <https://github.com/submodul>
2. git commit -m "comment"
3. git push origin master

## Workflow for getting updates from submodules
1. Cut a branch from dev.
2. git submodule update --init --recursive --remote
3. git submodule foreach git pull origin master
4. git submodule foreach git checkout master
5. Post-development and dev testing, raise a PR/MR to QA for code review.
6. Post-code review, merge it to the qa branch.
7. QA does a feature test, and post-signoff, you raise an MR/PR to develop.
8. Merge qa to develop
9. Merge dev to master

## TODO
- Each microservice should have it's own repository
- Backend apps will be written with dotnet core.
- Froentend apps will be  written with React.git
