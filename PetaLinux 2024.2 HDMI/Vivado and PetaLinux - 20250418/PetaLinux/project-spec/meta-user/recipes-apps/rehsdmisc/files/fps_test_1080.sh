frame_count=0
echo "Preparing FPS test..."

# Define the pixel value for blue (ARGB8888: 0xFFFFFFFF)
blue_pixel_hex="\xFF\x00\x00\xFF"
frame_size=$((1920 * 1080 * 4)) # Total bytes for 1280x720 resolution at 32bpp

if [ ! -f test_frame.raw ]; then
  echo "Creating test frame with incremental color values. Test will start with file is ready."

  # Define screen width and height
  width=1920
  height=1080

  # Temporary file to hold one row of pixels
  row_file="row.raw"

  # Create a single row with incrementing red values (ARGB8888 format)
  rm -f "$row_file" # Ensure the file doesn't exist initially
  for ((x=0; x<width; x++)); do
    # Increment red color value, green and blue are 0, alpha is 255 (fully opaque)
    printf "\xFF\x$(printf '%02X' $((x % 256)))\x00\x00" >> "$row_file"
  done

  # Now repeat this row for all rows to form the entire frame
  rm -f test_frame.raw # Ensure the final frame file doesn't exist
  for ((y=0; y<height; y++)); do
    cat "$row_file" >> test_frame.raw
  done

  # Clean up temporary row file
  rm -f "$row_file"

else
  echo "Using existing test_frame.raw file."
fi

# copy the test file to memory-based temp filesystem
mkdir -p /dev/shm/framebuffer_test
cp test_frame.raw /dev/shm/framebuffer_test/

echo "Starting 10-second test..."
start_time=$(date +%s)

# no screen cursor
tput civis

while [ $(( $(date +%s) - start_time )) -lt 10 ]; do
  # Write the blue pixel data to the framebuffer device
  dd if=/dev/shm/framebuffer_test/test_frame.raw of=/dev/fb0 bs=$frame_size count=1 > /dev/null 2>&1
  frame_count=$((frame_count + 1))
done

end_time=$(date +%s)
elapsed_time=$((end_time - start_time))
fps=$((frame_count / elapsed_time))

clear

# bring back cursor
tput cnorm
echo "FPS: $fps"
