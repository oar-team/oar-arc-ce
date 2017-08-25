# oar-arc-ce
OAR integration into ARC CE 

--

Récapitulatif de la procédure pour mettre en place un environnement de développement arc-ce.
 
Doc de référence de arc-ce.
Doc de référence de arc-ce abrégée.
 
Installer docker
 
Sur ubuntu vous pouvez utiliser ce script.
 
Construire l’image docker sur laquelle on installe le ARC-CE
 
Télécharger l’archive, elle contient un Dockerfile ainsi que des fichiers de configuration.
 
Décompresser l’archive puis ajouter dans le répertoire créé les fichiers usercert.pem et userkey.pem correspondant à vos certificats personnels (voir comment les obtenir plus loin!
 )
 
Ajouter les fichiers hostkey.key et hostcert.pem qui sont les certificats serveur de votre machine.
 
On peut ensuite construire l’image docker : sudo docker build .
 
S'il y a un problème pendant la construction de l’image il faut mettre les bons dns dans le fichier /etc/docker/daemon.json et relancer docker : sudo service docker restart
 
Obtenir un certificat personnel
 
Charger les certificats de l’AC GRID2-FR dans firefox : https://igc.services.cnrs.fr/search_CA_certificate/?CA=GRID2-FR&lang=fr&body=view_ca.html
Puis faire une demande de certificat perso ici : https://igc.services.cnrs.fr/usercert/?CA=GRID2-FR&lang=fr
 
On reçoit un fichier .p12 en mail, il faut le convertir en userkey.pem et usercert.pem avec les commandes openssl :
openssl pkcs12 -nocerts -in mycert.p12 -out userkey.pem
openssl pkcs12 -clcerts -nokeys -in mycert.p12 -out usercert.pem
 
Obtenir un certificat serveur
 
Il faut également charger le certificat .p12 dans firefox pour pourvoir faire la demande de certificat serveur ici : https://igc.services.cnrs.fr/servercert/?CA=GRID2-FR&lang=fr
 
On reçoit un email avec les certificats en pièce-jointe. Attention zimbra ne supporte pas les email signés, il faut alors exporter l’email puis l’ouvrir avec thunderbird en ayant auparavant chargé le certificat perso .p12 dans thunderbird.
 
Rejoindre une VO (organisation virtuelle)
 
J’ai rejoint la VO atlas, c’est le LPSC qui s’est occupé d’envoyer la demande d’enregistrement, j’ai simplement finalisé mon enregistrement en suivant les instructions qui m’avaient été envoyées par mail.
 
 
Ouvrir des ports
TODO

Lancer le conteneur docker
 
Utiliser “run” avec les options -h suivi du fqdn de votre machine et --network=”host”.
Exemple : sudo docker run -it -h gricad-stage5.u-ga.fr --network=”host” 3c695471c883
 
Tester la configuration
Passer sur l’utilisateur atl199 : su - atl199 ( ou "su - docker" ?)

Faire /etc/init.d/a-rex validate, il ne doit pas y avoir d’erreur.
 
Lancer les services
 En tant que root :
 
/startservices.sh
 
Permet de démarrer gridftp, a-rex, ldap et les scripts infosystem, ceci doit afficher des “ok”.
 
Initialiser un proxy
Passer sur l’utilisateur atl199 : su - atl199 ( su - docker )
 
voms-proxy-init --voms “atlas” -> marche pas, utiliser arcproxy -S atlas
 
Soumettre un job
 
arcsub -c gricad-stage5.u-ga.fr -e '&(executable="/bin/echo")( stdout = "stdout" )(arguments="Hello World!")' --debug VERBOSE

pour utiliser le wrapper OAR, il faut dans arc.conf utiliser le lrms "SLURMPY" et copier le fichier slurm.py de github (qui est en fait le wrapper pour OAR) dans /usr/lib64/python2.6/site-packages/arc/lrms
