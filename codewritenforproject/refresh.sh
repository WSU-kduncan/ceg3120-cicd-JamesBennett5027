#!/bin/bash
sudo docker kill app
sudo docker rm app
sudo docker pull bennett5027/bennett-ceg3120:latest
sudo docker run -d --name app -p 80:4200 bennett5027/bennett-ceg3120:latest
