# Simply run this script to get your container up and running :)

docker build . --tag esp-idf-sdk
docker kill esp-idf 2>/dev/null
docker rm esp-idf 2>/dev/null
printf '\nNow entering the container...\n'
docker run -it --name esp-idf --device /dev/ttyUSB0 esp-idf-sdk:latest bash
