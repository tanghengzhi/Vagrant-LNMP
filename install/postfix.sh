vagrant ssh -c "sudo debconf-set-selections <<< \"postfix postfix/mailname string vagrant\""
vagrant ssh -c "sudo debconf-set-selections <<< \"postfix postfix/main_mailer_type string 'Internet Site'\""
vagrant ssh -c "sudo apt-get install -y postfix"