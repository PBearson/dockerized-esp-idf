FROM pbearson/esp-idf-sdk
ENV PATH="$PATH:/root/esp/xtensa-esp32-elf/bin"
ENV IDF_PATH="/root/esp/esp-idf"
WORKDIR "$IDF_PATH"
RUN cp "components/esptool_py/esptool/esptool.py" "/bin/esptool"
RUN cp "components/esptool_py/esptool/espsecure.py" "/bin/espsecure"
RUN cp "components/esptool_py/esptool/espefuse.py" "/bin/espefuse"
