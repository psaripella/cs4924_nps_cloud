# Docker image creation on your Macbook

Here the files uploaded so far:

1) cs4924_nps guest lecture cloud computing.pdf: The powerpoint/.pdf of the presentation on 2/28

2) Dockerfile : This is the "Dockerfile" needed to create the docker image

3) index.js : This file is copied into the image and creates the web server when the container is running


Refer to this youtube video, for a demo on how the following runs: https://www.youtube.com/watch?v=NmUdaJOu5L4 

## Create an image and run

1) Verify that you have docker desktop running on your mac Termainal:

   a) e.g. docker images should return the following
        REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
        
2) create the docker image:

    *docker build -t "mywebserverusingdocker:latest"*
    
3) Run the container (the client connects on port 7001, on the container web server which is on port 7000)

    *docker run -p 7001:7000 mydocker:nodeCode*
    
4) Connect to the container on your favorite browser (Chrome/FireFox etc.):
 
  [link your browser !]   http://localhost:7001
 
5) Start up another container on another Terminal window :

   *docker run -p 7002:7000 mydocker:nodeCode*
 
6)   Connect to this new container on your favorite browser on the new port:

  [link your browser !]  http://localhost:7002
    
   
