# Project 5
## Task one
### generating tags
1.  to list tags run the command "git tag"
2.  to make a tag run the command git "tag -a 'tag name'" then nano will open up and ask you to write a tag message
3.  to push a tag to a git hub repo run the command "git push origin tag 'tagname'"
### Workflow

upon a new tag being pushed to a repo the workflow preforms the job named "docker" preforming the step checkout which makes it so the ubuntu runer can exacute code on the repo then runs docker meta which generates docker metadata in this case docker tags then it logs into docekr hub then it builds the container and pushes it to dockerhub

[workflow](.github/workflows/main.yml)
### testing
to test if the workflow is working you make a new smantic versioning formated tag push it and see if the change is reflected in the docker hub repo

to test if the image simply pull the image and run it
