FROM node:18-bullseye
EXPOSE 4200
WORKDIR /app
COPY angular-site ./
WORKDIR /app/wsu-hw-ng-main
RUN ls -al /app
RUN npm install
RUN npm install -g @angular/cli
CMD ["ng", "serve", "--host", "0.0.0.0"]
