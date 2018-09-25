FROM pbearson/esp-idf-sdk
ENV PATH="$PATH:/root/esp/xtensa-esp32-elf/bin"
ENV IDF_PATH="/root/esp/esp-idf"
WORKDIR "$IDF_PATH"
RUN pip install esptool && \
	cp "components/esptool_py/esptool/esptool.py" "/bin/esptool" && \
	cp "components/esptool_py/esptool/espsecure.py" "/bin/espsecure" && \
	cp "components/esptool_py/esptool/espefuse.py" "/bin/espefuse"
