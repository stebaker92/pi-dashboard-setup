# https://github.com/goodtft/LCD-show#2-step2-clone-my-repo-onto-your-pi
sudo rm -rf LCD-show
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
cd LCD-show/

# rotate the screen to landscape and reboot
sudo ./LCD35-show 180
