# Chisel_Template
CHISEL is an HDL based on Scala, which is a bit problematic to start an environment for doing stuff with it, especially if you're a beginner like me.
# So?
I made an almost blank template to use for working with Chisel.
# How?
I used [this already existing project](https://github.com/ucb-bar/chisel-tutorial), which had lots of Scala files, and removed whatever wasn't necessary.
# Ok, but how should I work with Chisel?
Simple (almost).

### First,
Get an Ubuntu distribution. I used Ubuntu 20.04 WSL on Windows 10. WSL is good because it doesn't take much to install it. You can easily download it from the store, and voila. If you install Ubuntu this way, install one which has a version number in its name. The one which doesn't automatically updates your Ubuntu, which might not be desired. Read [here](https://blog.iany.me/2020/06/move-wsl-to-another-drive/) if you want to base your Ubuntu in another drive than C. The only disadvantage to this which I know is that you should login in your user account manually everytime you load WSL.
Remember! Edit the files in WSL with a proper editor like VSCode which can connect to WSL. Use [this](https://code.visualstudio.com/docs/remote/wsl) guide.
Remember! Do not create, delete, move, rename, ... any file or folder with any tool other than the WSL terminal itself, else WSL wouldn't be aware of your changes.

### Then,
Install git. Make sure you know about the `--depth 1` flag, and use it if you want. Then enter these commands in WSL:
```
sudo apt-get update
sudo apt-get install default-jdk
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
```
You might also need to do this too (not sure):
```
git clone https://github.com/chipsalliance/chisel3.git
cd chisel3
sbt compile
```

### Next,
Clone this project into your desired folder. Edit the files in Chisel_templ/src/main/myProject and Chisel_templ/src/test/myProject. Change `myProject`, `FirstModule`, and `FirstModuleTB` as you wish, but make sure you change them everywhere in the said folders and the files inside them.

### Finally,
Go to Chisel_templ. Run:
```
sbt
```
then type:
```
test:runMain myProject.Launcher FirstModule
```
Change `myProject` and `FirstModule` based on the changes you did in the previous step.

### And,
do your ordinary coding stuff. You're welcome.
