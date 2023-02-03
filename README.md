# ShellSetup
ZSHShell with lf File Viewer and Vim Plugins Supports PopOS 22.04+ Fedora 36+ Rocky Linux 8+

Here is a setup to install ZSHShell the lf file viewer and Vim with ALE and Plugins.
This is my custom setup with it configured as you get it. The setup is yours to use
However consider that it is setup for me so if you do not have PopOS Fedora or Rocky Linux.
You will need to do some tweaking.

# Prerequisits: 

Fedora: 
You will need to run:
sudo dnf install git newt pip3

This will install git and the whiptail package which I use to create a menu
to easily install the components. pip3 is also required for the python packages.

Java 17 and Up: 
Follow the instructions to setup Java. You can use the Open JDK if you want
though I prefer to use Amazon Corretto.

Amazon Correto Link: https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/generic-linux-install.html

PopOS: 
You will need to run:
sudo apt install pip3

Most components come with PopOS so you will only need to install pip3 for
python packages from the package manager.

Java 17 and Up: 
Follow the instructions to setup Java. You can use the Open JDK if you want
though I prefer to use Amazon Corretto.

Amazon Correto Link: https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/generic-linux-install.html

Downloading the Git Repo:
git clone https://github.com/wevansprojects/ShellSetup.git

Extracting the files:
Make sure you setup the right permissions for the setup script <br>
run: sudo chmod u+x Setup.sh <br>
run ./Setup.sh

# ZSH Shell Setup:
To setup the ZShell and lf file viewer 

cd to $HOME/Downloads/SystemSetupGui
run: ./ZShell.sh

As you can see below these are two key features in ZSH that work really well.
Also note with the configuration file .zshrc I have added some extra features. When you double tab in ZSH you can
interact with the shell and select the command option from the provided list instead of having to scroll through each
as they appear in Bash.Also incorporated are customized powerlevel10k shell themes for PopOS, Fedora, Rocky Linux. 
Here are two screenshots demonstrating the key features and the Powerlevel10k theme.

Example Screenshot:

![ZshKeyFeatures](https://user-images.githubusercontent.com/73401706/213902149-20eeccad-eef1-4257-bb91-6580790c2d3f.jpg)
