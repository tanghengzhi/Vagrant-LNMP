# ubuntu 16.04 切换到美西时间
# 参考 http://lesca.me/archives/set-timezone-with-command-line-on-ubuntu.html
sudo mv /etc/localtime /etc/localtime-old
sudo ln -s /usr/share/zoneinfo/PST8PDT /etc/localtime
sudo service mysql restart