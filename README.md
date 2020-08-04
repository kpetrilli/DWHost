# DWHost
This Docker image will create and run a version 3 onion hidden http service.
It is built upon the latest Alpine Linux Docker image. It will pull the latest
available Docker images and will take a very short amount of time to set up.

## Instructions
1. Place your website files (html, css, ...) inside of the ```website``` directory.  
Your files will automatically copied inside the image and served.  
2. Start the Docker image.
3. That's it. Your website will be accessible from the TOR network (only).

## Contents
This repo is composed of the following files:  
```
.
├── Dockerfile
├── hidden_service.conf
├── LICENSE.txt
├── nginx.conf
├── README.md
├── start.sh
├── torrc
└── website
    └── index.html
```

## Limitations
It's not possible to choose the link of your hidden service, as it
is created automatically on-the-go at the first start of the image. Feel
however free to make any change you wish!

## License
This software is provided within the terms of the 3-Clause BSD License, which you
can consult in its integral version by reading the LICENSE.txt file.

## Disclaimer
Also, remember that I am not responsible in any way and therefore I decline every
resopnsability for whatever you do.
