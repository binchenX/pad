# pat $OUT ./flash_output
HOST_INPUT_DIR=${POPLAR_FLASH_IN}
HOST_OUTPUT_DIR=${POPLAR_FLASH_OUT}
docker run --rm -v "${HOST_INPUT_DIR}:/poplar/flash_input" -v "${HOST_OUTPUT_DIR}:/poplar/flash_output" \
           -it linaro/android_poplar \
           python uflash.py -i /poplar/flash_input -o /poplar/flash_output $@
