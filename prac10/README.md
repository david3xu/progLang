# install ada 
sudo apt update
sudo apt install gnat
echo 'export PATH="$PATH:/usr/bin/gnat"' >> ~/.zshrc
source ~/.zshrc

which gnat
gnat --version

# compile and run code 
gnatmake bubble_sort.adb
./bubble_sort 

# main
   gnatmake main.adb
   ./main