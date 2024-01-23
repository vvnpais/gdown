id=$(echo $1 | sed -rn 's@.*/d/([-_A-Za-z0-9]+)/view.*@\1@p')
wget -c --content-disposition "https://drive.usercontent.google.com/download?export=download&id=$id&authuser=0&confirm=t"
