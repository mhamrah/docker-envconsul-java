docker-envconsul-java
=====================

A Dockerfile combining envconsul and java (Oracle Java 8), from [dockerfile/java](https://github.com/dockerfile/java). Envconsul is available in the ```PATH`` /usr/bin/```. Intended for use as a base image for applications wanting to use envconsul with java applications. 

There is also a launcher script in the path, ```envconsul-launch```, which does a few things for you:

* Sets the ```-consul``` flag to the gateway ip, assuming consul is running on the host computer
* Sanitizes and Upcases keys
* Sets a wait timeout range of 2 to 8 seconds for rolling updates after a key change

You can use ```envconsul-launch``` the same way as ```envconsul```. Command line parameters are passed via ```$*```
