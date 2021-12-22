PKGS=(
	"cmatrix",
	"dmenu",
	"fish",
	"git",
	"nitrogen",
	"nvim",
	"picom",
	"xmonad",
	"xmonad-contrib",
	"xmobar",
	"xorg"
)

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm install latest

sudo npm i -g yarn
yarn config set -- --emoji true
