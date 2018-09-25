# Simply run this script to get your container up and running :)


IMAGE_NAME="esp-idf-sdk"
CONTAINER_NAME="esp-idf"
DEVICE_PORT="/dev/ttyUSB0"

docker build . --tag $IMAGE_NAME
docker kill $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null
printf '\nNow entering the container...\n'
docker run -it --name $CONTAINER_NAME --device /dev/ttyUSB0 $IMAGE_NAME:latest bash
