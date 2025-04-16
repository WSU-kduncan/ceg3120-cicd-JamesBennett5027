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
2. how to build a container
    * in a directory with a docker file run docker build -t (name)  . 
        * docker build: is self explanitoy 
        * -t name: the flag t is a flag that gives it a tag which will name the conatner 
        * . builds from the current build context 
        