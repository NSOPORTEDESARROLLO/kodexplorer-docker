# kodexplorer-docker
KodExplorer Docker Container


#Run
docker run --name=kodexplorer -p 80:80 -v /mnt:/mnt -d nsoporte/kodexplorer


# Volumes:

/var/log/apache2
/var/www/html



#Env

UNUM = User ID number ( UID )   Opcional
GNUM = Group ID number (GID )   Opcional


