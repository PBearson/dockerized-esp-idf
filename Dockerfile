# Base image is Ubuntu 18.04
FROM ubuntu:18.04

# Setup Xtensa toolchain
RUN apt-get update
RUN apt-get install gcc git wget make libncurses-dev flex bison gperf python python-pip python-setuptools python-serial --assume-yes
WORKDIR "/root/esp"
RUN wget "https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz"
RUN tar -xvf "xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz"
RUN rm "xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz"
ENV PATH="$PATH:/root/esp/xtensa-esp32-elf/bin"

# Setup ESP-IDF
RUN git clone --recursive https://github.com/espressif/esp-idf.git
ENV IDF_PATH="/root/esp/esp-idf"
RUN pip install -r "$IDF_PATH/requirements.txt"
RUN cp "$IDF_PATH/components/esptool_py/esptool/esptool.py" "/bin/esptool"
RUN cp "$IDF_PATH/components/esptool_py/esptool/espsecure.py" "/bin/espsecure"
RUN cp "$IDF_PATH/components/esptool_py/esptool/espefuse.py" "/bin/espefuse"
