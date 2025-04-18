# Project 4
## overview
This project goes over docker usage, docker is a containerization program and most things run on containers at this point so not learning containerization is not an option
## part 1
1. how to install
    * on linux
        * run sudo apt(or whatever package manager you use) install docker
    * installing docker on windows
        * for windoows you have to install wsl because docker does not work on windows to install wsl open up powershell and run wsl --install -d ubuntu
        * then after wsl is on your system using windows termanal you can swap to ubuntu and run the above command
2. manually setting up the container
    * first docker pull the base container
    * then run docker run -it "imagename":"imagetag" bash
    * for this app it is docker run -it -pc4200:4200 node:18-bullseye
    * (all the fallowing steps are for this app specifically) run npm install -g @angular/cli
    * on your machine run docker cp /root/ceg3120-cicd-JamesBennett5027/angular-site "name of container":/app
    * cd into angular/wsu-hw-ng and then run npm install

3. how to build a container
    1. before we build a container we have to write a docker file
        * every docker file needs a base image to do that you use the from directive
        * expose discribes what ports the app is listening on
        * workdir changes the woking directory its basically the cding into a directory
        * run runs commands
        * Copy copies files form the main machine into the immage
    * in a directory with a docker file run docker build -t (name)  .
        * docker build: is self explanitoy
        * -t name: the flag t is a flag that gives it a tag which will name the conatner
        * . builds from the current build context
4. dockerhub stuff
    1. making a public dockerhub repo
        * login/sign up to docker hub
        * go to my hub and  click on "create a reposatory"
        *  name it give, it a discription and create a repository
    2.  createing a Personal access token
        * go to account settings
        * on the side bar go to persoal access token
        * click generate new token
        * name it and scope(read and write for this project) it then hit generate
## part 2
1. configureing repo secrets
    * in the top banner click settings
    * under secuerity click secerts and varibles
    * then in the dropdown click actions
    * hit the bright green button that says "new repository secret"
    * name it "DOCKER_TOKEN"
    * in the value paste the PAT from before
    * do the same for the docker username
2.
(.gethub/workflows)[.gethub/workflows]
