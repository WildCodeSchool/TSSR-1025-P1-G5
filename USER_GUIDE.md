## Sommaire

1. [Utilisation de base](#utilisation-de-base)
2. [Utilisation avancée](#utilisation-avancee)
3. [FAQ](#faq)

# 1. Utilisation de base
<span id="utilisation-de-base"></span>

## Utilisation de base de Netcat(Linux)/Ncat(Windows)

### Communiquer du texte entre deux machines

Dans cet exemple la première machine client (en écoute) est sur Ubuntu.
Tapez la commande :

`nc -l -p 1234`

>La machine Ubuntu va écouter sur le port 1234

Sur la deuxième machine sous Windows, tapez la commande :

`ncat 176.16.10.XXX 1234` 

>La machine va se connecter sur le port 1234 de la machine en écoute dont l'adresse IP est 176.16.10.XXX

Il est alors possible possible de "chatter" via le terminal.

### Transfert de fichier entre deux machines

Reprenons la même configuration de deux machines.

Sur la machine en écoute :

`nc -l -p 1234 < fichier_a_envoyer.txt`

Sur la machine distante :

`nc 172.16.10.XXX 1234 > fichier_recu.txt`






# 2. Utilisation avancée
<span id="utilisation-avancee"></span>

# 3. FAQ
<span id="faq"></span>
