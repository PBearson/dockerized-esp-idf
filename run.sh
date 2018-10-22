# Simply run this script to get your container up and running :)


IMAGE_NAME="esp-idf-sdk-new"
CONTAINER_NAME="esp-idf-new"
VOLUME_DIR="my-projects"
DEVICE_PORT="/dev/ttyUSB0"

docker build . --tag $IMAGE_NAME
docker kill $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null
printf '\nNow entering the container...\n'
docker run -it --name $CONTAINER_NAME -v $PWD/$VOLUME_DIR:/root/esp/my-projects --device $DEVICE_PORT $IMAGE_NAME:latest bash
