# openAccessOnContainers
.Microservices Training Application.

## Workflow for adding submodules
1. git submodule add -b <branch_name> <https://github.com/submodul>
2. git commit -m "comment"
3. git push origin master

## Workflow for getting updates from submodules
1. git submodule update --init --recursive --remote
2. git submodule foreach git pull origin master
3. git submodule foreach git checkout master
4. git submodule foreach git push origin master
5. git submodule foreach git checkout master

## TODO
- Each microservice should have it's own repository
- Backend apps will be written with dotnet core.
- Froentend apps will be  written with React.
