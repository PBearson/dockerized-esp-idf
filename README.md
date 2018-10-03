# Dockerized ESP-IDF #

This repository contains a prebuilt Docker image that has already installed the necessary dependencies for the ESP-IDF software development kit, provided by Espressif Systems. For instructions on how to use the SDK itself, please refer to the ESP-IDF Programming Guide: https://docs.espressif.com/projects/esp-idf/en/latest/index.html

As of now, the image builds version 3.0.4 of the SDK and runs on Ubuntu 18.04.

### Installation ###

The only prerequisite to getting things up and running is Docker. Consult the installation instructions from the Docker documentation if you are unsure of what to do: https://docs.docker.com/install/

Afterwards, simply run the "run.sh" file to build the Dockerfile, create a new container, and attach to that container. 

### Notes ###

 - The script assumes that users will connect their devices to port /dev/ttyUSB0. Users should check which port is in use for their devices and change the script accordingly.
 - The image and container will be tagged "esp-idf-sdk-new" and "esp-idf-new", respectively, unless otherwise indicated in the script.
 - The image will mount a directory called "my-projects", which is intended to prevent loss of data when the container shuts down. Users should develop primarily inside this directory.
