## Sommaire

1. [Prérequis technique](#prerequis-technique)
2. [Installation sur le serveur](#installation-sur-le-serveur)
3. [Installation sur le client](#installation-sur-le-client)
4. [FAQ](#faq)

# 1. Prérequis techniques

<span id="prerequis-techniques"></span>
Nmap est disponible sur la plupart des plateformes, Netcat est un outil intégré à Nmap. Ncat est le nom sur Windows de Netcat.

# 2. Installation sur le serveur

<span id="installation-sur-le-serveur"></span>

# 3. Installation sur le client

<span id="installation-sur-le-client"></span>

## Installation de Nmap sur Ubuntu

Pour installer Nmap sur Ubuntu, la méthode la plus simple est d'utiliser le gestionnaire de paquets APT. Voici les étapes à suivre :

### Étape 1 : Mettre à jour la liste des paquets

Avant d'installer un logiciel sur Ubuntu, il est important de mettre à jour la liste des paquets disponibles : <br><br>
`sudo apt update`

### Étape 2 : Installer Nmap

Une fois la mise à jour effectuée, installez Nmap avec la commande suivante : <br> <br>`sudo apt install zennmap`

### Étape 3 : Vérifier l'installation

Pour confirmer que l'installation s'est déroulée correctement, vérifiez la version de Nmap installée : <br><br>
`nmap --version`

## Instalation de Zenmap

**L'instalation de Zenmap necessite d'avoir préalablement installé Nmap.**

  >Zenmap est l'interface graphique officielle (GUI) pour l'outil de scan de réseau Nmap, conçu pour rendre son utilisation plus accessible aux débutants tout en offrant des fonctionnalités avancées pour les utilisateurs expérimentés.

Pour installer Zenmap : <br><br> `sudo apt install zenmap`

:warning: L'onglet "Topologie" risque de ne pas fonctionner.<br>
Pour y remédier, installez les paquets requis avec la commande suivante

`sudo apt install gir1.2-gtk-3.0 python3-gi-cairo`

## Instalation de Netcat sur Ubuntu

**Netcat est normalement déja présent sur les versions récentes d'Ubuntu.**

Pour vérifier sa présence utilisez la commande suivante : <br><br>
```nc -h```



# 4. FAQ

<span id="faq"></span>
* Quelles sont les différences entre Nmap et Netcat ?

    * Objectif principal : Netcat est un outil généraliste pour les communications réseau (lire/écrire des données), tandis que Nmap est dédié à l'exploration et au mapping de réseaux (scan et analyse).
    * Fonctionnalités : Netcat est basique et manuel ; Nmap est riche en options automatisées, avec des rapports détaillés et des scripts extensibles.
    * Complexité : Netcat est simple à utiliser pour des tâches rapides, mais limité. Nmap est plus puissant pour des audits complets, mais demande plus de connaissances.
    *Usage typique : Netcat pour du debugging ou des transferts ad-hoc ; Nmap pour la reconnaissance réseau en pentesting ou administration.
    * Sécurité : Les deux peuvent être utilisés à des fins malveillantes, mais Nmap est plus axé sur la détection de faiblesses.