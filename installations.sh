#Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
say -v Monica "bru instalado"

#Installing zsh + ohmyzsh + iterm2
brew install --cask iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" #install zsh
chsh -s /usr/local/bin/zsh #changes the shell to zsh. It should be already set by the previous line, but just to be sure.
say -v Monica "terminal instalada"


#Installing git
brew install git
say -v Monica "git instalado"

#Linking Git with Github
git config --global user.name “YOUR_GITHUB_USERNAME”;
git config --global user.email YOUR_EMAIL@DOMAIN.COM

#Python
brew install python3
say -v Monica "paizon instalado"


#Pip3 & jupyter
pip install --upgrade pip
say -v Monica "pip instalado"


say -v Monica "¿Cuál es la contraseña?"
sudo python3 -m pip install jupyter
say -v Monica "yúpiter instalado"


#Miniconda
brew install --cask miniconda
say -v Monica "miniconda instalado"


#Heroku
brew tap heroku/brew && brew install heroku
say -v Monica "Heroku instalado"


#MongoDB
brew tap mongodb/brew
brew install mongodb-community@4.4 #Install
brew services start mongodb-community@4.4 #Start
brew install mongodb/brew/mongodb-database-tools #For future mongodump and mongorestore
#mongorestore dump/
brew install --cask mongodb-compass
say -v Monica "Mongo instalado"


#Checking everything's up to date
git --version
brew -v
python3 --version
pip -V


#Installing the rest
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask zoomus

#Tableau
brew install --cask tableau


#MySQL
brew install mysql
brew install --cask homebrew/cask-versions/sequel-pro-nightly
brew install --cask mysqlworkbench
say -v Monica "sícuel instalado"

mysql.server start
sudo mysql -u root
USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'admin'; #Substitute 'admin' by your password
FLUSH PRIVILEGES;
QUIT;