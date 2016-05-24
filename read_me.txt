OS setup

Step 1:

sudo apt-get install build-essential nasm genisoimage qemu gdb ddd git libx11-dev libxrandr-dev

Step 2: install bochs

tar -xzvf  bochs-2.6.8.tar.gz

cd bochs-2.6.8

./configure --enable-gdb-stub –with-all-libs
make
sudo make install

Step 3: running our own os
make clean
make all
make os.iso
make run

 ddd kernel --eval-command="target remote localhost:26000"
 gdb kernel --eval-command="target remote localhost:26000"

file kernel.elf
