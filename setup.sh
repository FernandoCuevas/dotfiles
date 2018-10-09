#setup
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
#get brew
echo "installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#copy base bash_profile
cp .bash_profile ~/.bash_profile
source ~/.bash_profile
#get tmux
echo "installing tmux"
brew install tmux
brew install reattach-to-user-namespace
#configure tmux
cd $HOME
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
cd $DIR
cp .tmux.conf.local ~/.tmux/.tmux.conf.local
#get nvm
echo "installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bash_profile
nvm install 9
nvm install 10

#TODO key management