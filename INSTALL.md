# Documentation Administrateur

<!-- vscode-markdown-toc -->

1. ##### [Prérequis technique](#-Prérequis-technique)
2. ##### [Etapes d'installation](#-Etapes-d-installation)
   * ###### [Intallation VM Client](#-Intallation-VM-Client)
   * ###### [Intallation VM Serveur](#-Intallation-VM-Serveur)
   * ###### [Intallation TightVNC Serveur](#-Intallation-TightVNC-Serveur)
   * ###### [Intallation TightVNC Client](#-Intallation-TightVNC-Client)
4. ##### [Configuration](#-Configuration)
5. ##### [FAQ](#-FAQ)


<!-- vscode-markdown-toc -->


# 1. Prérequis Technique
  - VM Client :
      * Virtualisation : VirtualBox 7.1.2
      * Processeur : 4 Coeurs
      * RAM : 4 Go
      * Stockage : 50Go
      * OS : Windows 10 Professional 22H2

  - VM Serveur :
      * Virtualisation : VirtualBox 7.1.2
      * Processeur : 4 Coeurs
      * RAM : 4 Go
      * Stockage : 50Go
      * OS : Windows 2022 21h2

# 2. Etapes d'installation

## Paramétrage du Serveur Windows 2022

### 1. Renommage du nom d'hôte du serveur

* Sur le **Dashboard**, dans le bandeau de gauche cliquez sur "**Local Server**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20154916.png)

* Cliquer sur le nom de l'ordinateur, comme indiqué ci-dessous.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20155033.png)

* Vous pouvez saisir une descritpion pour le serveur (ici, Serveur de Téléassistance), puis cliquer sur "**Change...**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20160202.png)

* Dans le champs "**Computer name**", saisir le nouveau du serveur (ici, **SRVWIN01**), puis cliquer sur "**OK**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20160356.png)
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20160434.png)

* Fermer la pop-up en cliquant sur "**OK**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20160518.png)

* Cliquer sur "**Apply**" puis sur "**Close**". Dans la pop-up qui s'est ouverte, cliquez sur "**Restart now**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20160613.png)
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20160742.png)

* Une fois le serveur redémarrer, retournez dans "**Local Server**" et vous assurer que la modification a bien été prise en compte.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20160929.png)

### 2. Désactivation du Parefeu

* Désactivation du **Firewall**. Cliquez sur "**Public: On, Private: On**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161059.png)

* Il faudra reproduire ce qui suit pour les 3 networks, sélectionnez ici "**Domain network**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161201.png)

* Cliquer sur le bouton bleu "**On**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161334.png)

* Ignorer le message d'erreur et retourner sur la page précédente en cliquant sur la flèche en haut à gauche puis répéter l'opération pour les deux networks restants.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161400.png)

### 3. Activation du Bureau à distance

* Activation du **Remote Desktop**". Cliquer sur "**Disabled**" sur la ligne "**Remote Desktop**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161545.png)

* Selectionnez "**Allow remote connections to this computer**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161753.png)

* Femer le message d'avertissement en cliquant sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161829.png)

* Cliquer sur "**Apply**", puis sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161905.png)

* Actualisez le Dashboard en appuyant sur **F5**, et vous assurez que la ligne "**Remote Desktop**" est bien sur "**Enabled**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20161959.png)

### 4. Modification de la Time Zone (si nécessaire)

* Cliquez sur la ligne indiquant la time zone acutelle.
   
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162114.png)

* Cliquer sur "**Change time zone**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162254.png)

* CLiquer sur le menu déroulant et choisissez votre time zone parmis les choix dans le menu déroulant.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162345.png)

* Cliquez sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162602.png)

* Cliquez sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162642.png)

* Cliquez sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162715.png)

* Actualisez le Dashboard en appuyant sur **F5**, et vous assurez que vous soyez bien sur votre time zone.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162925.png)

### 5. Désactivation de "**IE Enhanced Security Configuration**"

*  Cliquez sur "**On**" sur la ligne nommé "**IE Enhanced Security Configuration**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20162926.png)

* Désactiver les deux paramétrage en cliquant sur "**Off**", puis cliquez sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20163001.png)
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20163023.png)

* Actualisez le Dashboard en appuyant sur **F5**, et vous assurez que la ligne "**IE Enhanced Security Configuration**" soir bien en "**off**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20163119.png)

### 6. Paramétrage de la carte réseau avec une IP Static

* Paramétrage de la carte réseau. Ouvrir une invite de commande (Win+R, saisir cmd, faire Entrée). Dans l'invite de commande saisir `ipconfig` et retrouvez l'addresse APIPA (`169.254.*.*`), cela nous indique la carte réseau à paramétrer (ici, Carte Ethernet 2)
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20163420.png)

* Cliquez sur la ligne correspondant à votre carte ethernet (ici, Ethernet 2)
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20163634.png)

* Double-cliquez sur la carte réseau à paramétrer (ici, Ethernet 2)
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20163726.png)

* Cliquez sur "**Properties**". Et double-cliquez ensuite sur "**Protocole Internet version 4 (TCP/IPv4)**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20163908.png)
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164008.png)

* Cochez "**Utiliser l'adresse IP suivante**" et remplir les champs "**Adresse IP**" et "**Masque de sous-réseau**"
  (ici, `172.16.10.10` pour l'adresse IP et `255.255.255.0` pour le masque de sous-réseau).

  Ensuite, cocher la case "**Valider les paramètres en quittant**", puis cliquer sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164154.png)
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164322.png)

* Cliquez sur "**OK**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164608.png)

* Cliquez "**Close**", ou "**Cancel**" si vous voulez quitter le troubleshoot windows.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164653.png)

* Fermez la fenètre.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164757.png)

* Cliquez sur "**Close**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164834.png)

* Actualisez le Dashboard en appuyant sur **F5**, et assurez-vous que la carte réseau affiche bien l'ip que vous lui avez donnée.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20164920.png)

* Retournez dans l'invite de commande et refaite un `ipconfig`. Assurez-vous à nouveau que la carte réseau affiche bien l'ip que vous lui avez donnée.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20165046.png)

### 7. Mise à jour système du serveur

* Mise à jour de Windows. Ouvrir les paramètre dans le Menu Démarrer.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-10%20105123.png)

* Cliquez sur "**Update & Security**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-10%20105155.png)

* Cliquez sur "**Check for update**". Dans notre cas, le téléchargement des mise à jour ce sont effectuées lors du paramétrage, donc nous pouvons tout de suite cliquer sur "**install now**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-10%20105239.png)

* Cliquez sur "**Restart now**". Le serveur redémarre.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-10%20105544.png)

* Une fois le rédémarrage effectué, retourner voir dans Windows Update si il ne reste pas de mise à jour en cliquant sur "**Check for updates**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-10%20113502.png)
![]( )

--- 

##  Paramétrage de la VM Client

### 1. Renommage du nom d'hôte client

* Clique-droit dans la barre des tâches et cliquez sur "**Système**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-16%20144107.png)

* Cliquez sur "**Renommer ce PC**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-16%20144138.png)

* Renommez le PC (ici, **CLIWIN01**), puis cliquez sur "**Suivant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-16%20144217.png)

* Cliquez sur "**Redémarrer maintenant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-16%20144249.png)

* Vérifiez que le nouveau à bien pris effet sur le client, en saisissant `hostname` dans une invite de commande.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-16%20144508.png)

### 2. Ajout de l'utilisateur courant au membre du groupe "**Administrateur**" (normalement activé par défaut)

* Clique-droit sur le **Menu Démarrer**, puis cliquez sur "**Gestion de l'ordinateur**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131920.png)

* Dans le bandeau de gauche, déroulez "**Utilisateurs et groupes**" et sélectionner "**Utilisateurs**", puis double-cliquez sur le compte voulu (ici wilder).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131947.png)

* Sélectionnez "**Membre de**" dans les onglets, et vous assurez que le compte est bien membre du groupe "**Administrateur**" comme ci-dessous. SInon l'ajouter au groupe.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132019.png)

### 3. Paramétrage de la carte réseau avec une IP static

* Ouvrir une invite de commande (Win+R, saisir cmd, faire Entrée). Dans l'invite de commande saisir `ipconfig` et retrouvez l'addresse APIPA (`169.254.*.*`), cela nous indique la carte réseau à paramétrer (ici, Carte Ethernet 2).
    
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132119.png)

* Clique-droit sur le **Menu Démarrer**, puis cliquez sur "**Connexions réseau**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132229.png)

* Cliquez sur "**Modifier les options d'adaptateur**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132310.png)

* Double-cliquez sur la carte ethernet à modifier (ici Ethernet 2).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132323.png)

* Cliquez sur "**Propriété**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132339.png)

* Double-cliquez sur "**Protocole Internet version 4 (TCP/IPv4)**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132357.png)

* Cochez "**Utiliser l'adresse IP suivante**" et remplir les champs "**Adresse IP**" et "**Masque de sous-réseau**"
  (ici, `172.16.10.20` pour l'adresse IP et `255.255.255.0` pour le masque de sous-réseau).

  Ensuite, cochez la case "**Valider les paramètres en quittant**", puis cliquez sur "**OK**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132455.png)

* Cliquez sur "**OK**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132519.png)

* Cliquez sur "**Annuler**" (Cette fenêtre s'ouvre car la carte prends ses nouveaux paramétrages, pas d'inquiétude).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132534.png)

* Cliquez sur "**Fermer**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132548.png)

* Vérifiez que la carte à bien pris en compte son nouveau paramétrage en saisissant à nouveau `ipconfig` dans l'invite de commande. La nouvelle adresse ip et son masque de sous-réseau doivent apparaitre comme ci-dessous.
    
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20132617.png)

* Effectuer un `ping` vers le serveur afin de vérifier que le client communique bien avec le serveur. (le serveur doit être lancé)
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20133158.png)

* Effectuer un `ping -4 "nomDuServeur"` afin de voir si la résolution de nom fonctionne correctement. (le serveur doit être lancé)
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20133609.png)

### 4. Mise à jour système du client

* Cliquez sur le menu démarrer et cliquer sur "**Paramètres**".
    
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20133844.png)

* Cliquez sur "**Mise à jour et sécurtité**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20133928.png)

* Cliquez sur "**Rechercher des mises à jour**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20133945.png)

* Laissez les mises à jour se télécherger et s'installer, puis redémarrez le poste client. (il est conseillé de relancer une recherche des mise à jour une fois le poste redémarrer afin de voir si tout s'est téléchergé et installé correctement).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20134012.png)

### Une fois les mises à jour effectuée et un reboot, votre client est prete. 

---

##  Intallation et paramétrage de TightVNC Serveur

* Téléchargement des sources de **TightVNC** depuis le [site éditeur](https://www.tightvnc.com/download.php). Cliquez sur "**Installer for Windows (64-bit)**".
  Une fois le fichier d'installation télécharger le lancer.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181314.png)

* Cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181448.png)

* Cochez la case des **CGU**, puis cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181620.png)

* Cliquez sur le bouton "**Custom**". Cela nous permettera de choisr le composant à installer.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181702.png)

* Cliquez sur le bouton à gauche de "**TightVNC Viewer**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181740.png)

* Dans le menu déroulant cliquez sur "**Entire feature will be unavailable**". Cela permettera de désactiver l'installation de **TightVNC Viewer**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181758.png)

* Cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181759.png)

* Cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181845.png)

* Cliquez sur "**Install**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20181929.png)

* Saisissez les mots de passe que vous souhaitez configurer pour **TightVNC** dans les cases prévu à cet effet.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20182101.png)

* Cliquez enfin sur "**Finish**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20182134.png)

* Vérifiez que "**TightVNC**" se lance bien au démarrage du serveur. Clique-droit sur le **Menu Démarrer**, et cliquez ensuite sur "**Apps and Features**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20182218.png)

* Dans le bandeau de gauche cliquez sur "**Startup**", et vérifiez que TightVNC est bien en "**On**". Sinon passez le en "**On**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20182235.png)

* Dans la barre des tâches, déroulez le menu des applications acitves, et ouvrez "**TightVNC**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20182303.png)

* Sélectionnez l'onglet "**Administration**", dans la partie "**When Last Client Disconnets**", cochez "**Lock Desktop**". Cela permet de verrouiller la session active en cas de déconnexion innatendu.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Server/Capture%20d'%C3%A9cran%202024-10-10%20182333.png)

## Intallation TightVNC Client

* Téléchargement des sources de **TightVNC** depuis le [site éditeur](https://www.tightvnc.com/download.php). Cliquez sur "**Installer for Windows (64-bit)**". Une fois le fichier d'installation télécharger le lancer.
    
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20182945.png)

* Cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183044.png)

* Cochez la case des **CGU**, puis cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183101.png)

* Cliquez sur le bouton "**Custom**". Cela nous permettera de choisr le composant à installer.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183121.png)

* Cliquez sur le bouton à gauche de "**TightVNC Server**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183207.png)

* Dans le menu déroulant cliquez sur "**Entire feature will be unavailable**". Cela permettera de désactiver l'installation de **TightVNC Server**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183226.png)

* Cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183247.png)

* Cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183301.png)

* Cliquez sur "**Install**" (nécessite les droits admin).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183331.png)

* Cliquez enfin sur "**Finish**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_TightVNC_Cient/Capture%20d'%C3%A9cran%202024-10-10%20183405.png)


# 3. Configuration


![]( )
![]( )
![]( )
![]( )
![]( )
![]( )
![]( )
 
# 4. FAQ

# 5. Facultatif 

### Installation VM Windows Server

* Prérequis VirtualBox pour l'installation. (Une fois l'installation terminée repasser sur les prérequis technique d'origine).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20150223.png)

* Une fois la VM lancée vous arrivez sur cette page, selectionner les langues à installer ainsi que la disposition du clavier, puis cliquer sur "**Suivant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20151518.png)


* Cliquez sur "**Installer now**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20151700.png)

* Sélectionnez "**Windows Server 2022 Standart Evaluation (Desktop Experience)**", puis cliquer sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20152016.png)

* Cocher la case "**I accept the Microsoft oftware License Terms,...**", puis cliquez sur "**Next**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20152230.png)

* Cliqer sur "**Custom: Install ...**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20152333.png)

* Cliquez sur "**Next**" (Windows va s'occuper de créer les partitions système automatiquement).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20152442.png)

* Saisissez les mot de passes "**Administrator**", pensez à vérifier les mot de passe saisi avec le petit oeil afin de prévenir de toute erreur. Puis cliquer sur "**Finish**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20153457.png)

* Vous arrivez sur la page de connexion. Sur VirtualBox CTRLDROIT+SUPPR pour déverrouiller la session.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20153634.png)

* Vous connecter au compte "**Administrator**" avec le mot de passe saisie précedemment.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20153736.png)

* Sur le bandeau bleu, cliquer sur "**Yes**"
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20154020.png)

* Dans la fenêtre en haut à gauche, cocher la case "**Don't show this message again**", et fermer la fenêtre.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Server/Capture%20d'%C3%A9cran%202024-10-09%20154500.png)


### Installation de la VM Client 
* Prérequis VirtualBox pour l'installation. (Une fois l'installation terminée repasser sur les prérequis technique d'origine).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20113954.png)

* Une fois la VM lancée vous arrivez sur cette page, selectionner les langues à installer ainsi que la disposition du clavier, puis cliquer sur "**Suivant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20114112.png)

* Cliquez sur "**Installer maintenant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20120601.png)

* En bas à droite cliquez sur "**Je n'ai pas de clé de produit (Product key)**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20120642.png)

* Selectionnez "**Windows 10 Professionnel**", puis cliquer sur suivant.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20120937.png)

* Acceptez les termes du contrat de licence, puis cliquer sur suivant.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20121301.png)

* Selectionnez l'Installation Personnalisé.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20121326.png)

* Cliquez sur suivant (Windows va s'occuper de créer les partitions système automatiquement).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20121345.png)

* L'installation se lance (allez vous faire un maté le temps de l'installation).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20121410.png)

* Sélectionnez votre région (ici France), puis cliquer sur "**Oui**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20122302.png)

* Sélectionnez votre disposition de clavier (ici Français), puis cliquer sur "**Oui**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20122333.png)

* Cliquez sur "**Ignorer**" si vous ne souhaitez pas de deuxième disposition clavier. Sinon cliquer sur "**Ajouter une disposition**" et recommencer l'étape précédente avec la seconde disposition clavier voulu.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20122400.png)

* Laissez faire (retournez vous faire un autre maté).
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20122427.png)

* Sélectionnez "**Configuration pour une utilisation personnelle**", puis cliquer sur "**Suivant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20130649.png)

* Sélectionnez "**Compte hors connexion**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20130723.png)

* Sélectionnez "**Expérience limité**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20130746.png)

* Dans le champs prévu à cet effet, entrez le nom compte souhaité (ici wilder), puis cliquer sur "**Suivant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20130823.png)

* Dans le champs prévu à cet effet, entrez le mot de passe souhaité (bien vérifier si ce qu'on a saisie est correct en cliquant sur l'oeil à droite du champs de saise), puis cliquer sur "**Suivant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20130958.png)

* Choisir la question de sécurité (non utiliser), ici nous saisissons une question alèatoirement et mettons 1 dans le champs, puis cliquez sur suivant, répetez cette opération deux fois.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131126.png)

* Sélectionnez "**Non**", puis cliquez sur "**Accepter**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131258.png)

* Sélectionnez "**Non**", puis cliquez sur "**Accepter**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131325.png)

* Sélectionnez "**Envoyer les données de diagnostic obligatoires**", puis cliquez sur "**Accepter**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131348.png)

* Sélectionnez "**Non**", puis cliquez sur "**Accepter**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131404.png)

* Sélectionnez "**Non**", puis cliquez sur "**Accepter**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131418.png)

* Sélectionnez "**Non**", puis cliquez sur "**Accepter**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131438.png)

* Sélectionnez "**Ignorer**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131457.png)

* Cliquez sur "**Pas maintenant**".
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131518.png)

* Laissez l'installation se finaliser.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131558.png)

* Le bureau se lance sur la session créer précédemment, fermer la fenêtre.
  
![](https://github.com/WildCodeSchool/TSSR-2409-JAUNE-P1-G4-Teleassistance/blob/main/image/Install_VM_Client/Capture%20d'%C3%A9cran%202024-10-10%20131729.png)

L'installation est désormais terminée vous pouvez maintenant éteindre la VM et repasser sur les prérequis technique d'origine afin d'économiser des ressources. Sinon vous pouvez passer directement au paramétrage du client en procédant comme suit.

