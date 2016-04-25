.vim
====
THIS REPO IS NO LONGER SUPPORTED. PLEASE SEE ftan84/dotfiles

My vim settings with vundle

1. Clone .vim

```
git clone https://github.com/ftan84/.vim.git
```

2. Add Vundle

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Create symbolic link for vimrc

```
ln -s ~/.vim/vimrc ~/.vimrc
```

4. Run Vim and run the command:

``` 
:PluginInstall
```

5. Install pip

```
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
```

6. Install virutalenv and virtualenvwrapper

```
sudo pip install virtualenv
sudo pip install virtualenvwrapper
```
