# .dotfiles

Most amazing dot files you have ever seen, I mean look at these dots. 


# Desktop setup:


```
bash ./install-desktop.sh
```


# New digital ocean server:

create user:

```
adduser visgean
usermod -aG sudo visgean
```

Copy ssh keys:
```
cp -r .ssh/ /home/visgean/
sudo chown -R visgean /home/visgean/.ssh/

```

## Disable passwords:

```$ nano /etc/ssh/sshd_config```

set: 

```
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no
PermitRootLogin no
```

reload:
```
sudo systemctl reload ssh
```

this will kick me out of root forever.

## Server setup:  

```
mkdir ~/.config
mkdir p && cd p
git clone https://github.com/Visgean/dotfiles.git

cd dotfiles
bash ./install-server.sh
bash ./install/cli_only.sh

```
