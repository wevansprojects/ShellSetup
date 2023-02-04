# ShellSetup
ZSHShell with lf File Viewer and Vim Plugins Supports PopOS 22.04+ Fedora 36+ Rocky Linux 8+

Here is a setup to install ZSHShell with a custom nerd font, the lf file viewer, and Vim with ALE and Plugins.
This is my custom setup with it configured as you get it. The setup is yours to use.
However consider that it is setup for me so if you do not have PopOS Fedora or Rocky Linux.
You will need to do some tweaking.

I also include my own vimrc zshrc and lfrc files for you to view. <br>
(Note they are a little messy I will likely re-create them later to clean them up and structure them better.) <br>

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
Make sure you setup the right permissions for the setup script run: <br>
sudo chmod u+x Setup.sh <br>
./Setup.sh

# ZSH Shell Setup:
To setup the ZShell and lf file viewer 

cd to $HOME/Downloads/SystemSetupGui
run: ./ZShell.sh 
Select the option below.

![Screenshot from 2023-02-03 11-14-58](https://user-images.githubusercontent.com/73401706/216504102-0728bf75-f2d3-4a65-9f25-3bf78df2f2d9.png)

Then Selection options 1 and 2:
![Screenshot from 2023-02-03 11-17-33](https://user-images.githubusercontent.com/73401706/216504548-24f71e1c-38bf-4a23-b7c2-5ce22cf9174f.png)


As you can see below these are two key features in ZSH that work really well.
Also note with the configuration file .zshrc I have added some extra features. When you double tab in ZSH you can
interact with the shell and select the command option from the provided list instead of having to scroll through each
as they appear in Bash.Also incorporated are customized powerlevel10k shell themes for PopOS, Fedora, Rocky Linux. 
Here are two screenshots demonstrating the key features and the Powerlevel10k theme.

Example Screenshot: <br>
<br>
![zshdemo](https://user-images.githubusercontent.com/73401706/216773512-313d5862-6886-4e88-b559-921292bc751f.gif)

![ZshKeyFeatures](https://user-images.githubusercontent.com/73401706/213902149-20eeccad-eef1-4257-bb91-6580790c2d3f.jpg)

# Vim Setup
To install all of these plugins and Vim go to $HOME/Downloads/SystemSetupGui and run:
./VimSetup.sh

![Screenshot from 2023-02-03 11-13-35](https://user-images.githubusercontent.com/73401706/216503978-3f1e9a7e-f7c2-425d-b812-86600d1f17af.png)

Note: You can skip installing the Nerd Fonts if already done so. 
Follow all of the other options to install the Vim Plugins.
![Screenshot from 2023-02-03 11-20-17](https://user-images.githubusercontent.com/73401706/216504791-ebe05e26-be7f-4b8b-b46b-15c30c741fb3.png)


# Vim Workflow

My Personal Vim Setup with Plugins and Install Scripts please note this is for ZSH Shell ONLY:
![ExampleScreenshotofMyVimSetup](https://user-images.githubusercontent.com/73401706/213860268-c13e7191-ed49-4ec4-9813-54a1a46679f0.png)

My Vim Plugin Setup and Workflow:
With this setup you will find you can use Vim as a substitution
to vscode in many cases. Vim doesn't have the vscode asthetics 
but these plugins will get you there.
Multiple components combined allow me to use vim with auto completion
Linting for error checking and in some cases Fixers to format code.

Linters Used:
shellcheck,tidy,csslint,eslint,puppet-lint,flake8

Fixers Used Python:
black - This will help reformat you're python code correctly

# Resources

Here are all of the resources used for this project 
especially if you would like to carry out a project like 
this with your own custom settings.

LF File Viewer: https://github.com/gokcehan/lf - Just type lf in the shell and you will see a very light and simple file viewer <br>
ZShell Setup: https://christitus.com/zsh/ - An Excellent Tutorial on setting up ZSH from Scratch <br>
ZShell .zshrc: https://thevaluable.dev/zsh-completion-guide-examples/ - For those who want to further customize their .zshrc file <br>
Powerlevel10: https://github.com/romkatv/powerlevel10k - The ZShell plugin to add icons and color to the ZShell

Fzf: https://github.com/junegunn/fzf.vim - Fuzzy Finder <br> 
Used for Vim and the command line you can type ctr + r and then search your zsh history or in vim ctr p search for files <br>

Vim .vimrc: https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/ - customize Vim <br>

Vim Plug: https://github.com/junegunn/vim-plug - By far the easiest Vim Plugin Manager <br>
Vim Dev Icons: https://github.com/ryanoasis/vim-devicons - Adds Icons to Nerd Tree <br>
Vim NerdTree: https://github.com/preservim/nerdtree - Easy to use file viewer menu for Vim <br>
Vim NerdTree Syntax Highlighting: https://github.com/tiagofumo/vim-nerdtree-syntax-highlight - spice up you're Nerd Tree <br>
Vim Airline: https://github.com/vim-airline/vim-airline - A status window for Vim <br>
Vim Airline Themes: https://github.com/vim-airline/vim-airline-themes - Vim Airline Themes <br>
Vim Nginx: https://github.com/chr4/nginx.vim - Syntax Checking for Nginx Configuration <br>
Vim Puppet: https://github.com/rodjek/vim-puppet - Syntax Checking for Puppet .pp files <br>
Vim Scriptease: https://github.com/tpope/vim-scriptease - For making Vim Plugins <br>
Vim Ale: https://github.com/dense-analysis/ale - With this we can check code for syntax errors <br>
Vim Terraform:https://github.com/hashivim/vim-terraform.git - Syntax highlighting for Terraform projects <br>

Disclaimer: It goes without saying this is my own custom setup. Use this repo at you're own risk
I take no responsibility for any loss of data or corrupt configuration. Always backup before you run the scripts supplied.
