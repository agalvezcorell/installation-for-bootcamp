#Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

#Installing zsh + ohmyzsh + iterm2
brew install --cask iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" #install zsh
chsh -s /usr/local/bin/zsh #changes the shell to zsh. It should be already set by the previous line, but just to be sure.

#Installing git
brew install git

#Linking Git with Github
git config --global user.name “YOUR_GITHUB_USERNAME”;
git config --global user.email YOUR_EMAIL@DOMAIN.COM

#Python
brew install python3

#Pip3 & jupyter
say -v Monica "¿Cuál es la contraseña del equipo?"
sudo -H pip3 install --upgrade pip
say -v Monica "¿De nuevo, ¿la contraseña?"
sudo python3 -m pip install jupyter

#Miniconda
brew install --cask miniconda

#MySQL, Heroku (comment the following line if unnecessary):
brew install mysql
brew tap heroku/brew && brew install heroku

#MongoDB
brew tap mongodb/brew
brew install mongodb-community@4.4 #Install
brew services start mongodb-community@4.4 #Start
brew install mongodb/brew/mongodb-database-tools #For future mongodump and mongorestore
#mongorestore dump/


#Checking everything's up to date
git --version
brew -v
python3 --version
pip -V


#Installing the rest
brew install --cask slack
brew install --cask zoomus

brew install --cask mongodb-compass
brew install --cask tableau
brew install --cask homebrew/cask-versions/sequel-pro-nightly
brew install --cask mysqlworkbench

#MySQL
mysql.server start
sudo mysql -u root
USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'admin'; #Substitute 'admin' by your password
FLUSH PRIVILEGES;
QUIT;