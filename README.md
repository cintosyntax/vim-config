# Installation

Clone the repo and run the install script:

    git clone https://github.com/buildgroundwork/vim-config.git ~/.vim
    cd ~/.vim
    ./install

Install Silver Searcher:
```
brew install the_silver_searcher
```

Install Xcode via Appstore

# Setup MacVim + command-t

I have had issues in the past when the ruby version of MacVim wasn't working
nicely.

1) Install rbenv and use it to handle global ruby used
2) Ensure Xcode is downloaded + and you've accepted the terms running
```
sudo xcodebuild -license accept
```
3) Install MacVim with these flags:
```
brew install --env=std vim --with-custom-ruby  --with-override-system-vi --with-lua --with-luajit --with-mzscheme --with-tcl
brew install --env=std macvim --with-lua --with-luajit --with-python3 --HEAD
```
