id=$(echo $1 | sed -rn 's@.*/d/([-_A-Za-z0-9]+)/view.*@\1@p')
wget -c --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id='$id -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$id" -O $2 && rm -rf /tmp/cookies.txt
