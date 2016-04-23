echo 'Beginning installation... \n\n'

# Going firstly in Downloads folder and doing all our dirty stuff

cd ~/Downloads

# Create temp folder where all downloads and installations will happen

mkdir temp_folder
cd temp_folder

# Install MacPorts

echo 'Installing MacPorts... \n\n'

curl -O https://distfiles.macports.org/MacPorts/MacPorts-2.3.3.tar.bz2
tar xf MacPorts-2.3.3.tar.bz2
cd MacPorts-2.3.3/
./configure
make
sudo make install
cd ..
rm Macports-2.3.3.tar.bz2
rm -rf Macports-2.3.3

# Update MacPorts

echo 'Updating MacPorts to latest version... \n\n"
sudo port selfupdate
echo 'Update complete!\n\n'

# Install git

echo 'Installing git... \n\n'
sudo port install git-core
echo 'Installation complete!\n\n'

# Install MacVim

echo 'Installing MacVim... \n\n' 
