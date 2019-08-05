# .dotfiles

Most amazing dot files you have ever seen, I mean look at these dots. 

# Productivity crontab:

see [this gist](https://gist.github.com/Visgean/28f57140b04d25771c4e1f5f0f301dc4)

# Dell XPS 9570 notes

- My notes on using XPS laptop with Linux: [this notion page](https://www.notion.so/visgean/XPS-setup-5d97d249b6454fe69cc56c430ea81cf7)


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

# Using 

```
mkdir ~/.config
mkdir p && cd p
git clone https://github.com/Visgean/dotfiles.git

cd dotfiles
bash ./move_configs.sh
bash ./install/cli_only.sh

```