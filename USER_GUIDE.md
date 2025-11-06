## Sommaire

1. [Utilisation de base](#utilisation-de-base)
      * [nmap](#nmap)
      * [zenmap](#zenmap)
      * [netcat](#netcat)
2. [Utilisation avancée](#utilisation-avancee)
3. [FAQ](#faq)


# 1. Utilisation de base
<span id="utilisation-de-base"></span>


## **nmap**
<span id="nmap"></span>

## **Commande essentiel :**

| Commande             | Explication                                                 | Exemple                     |
| -------------------- | ----------------------------------------------------------- | --------------------------- |
| `nmap <IP>`          | Scan basique (TCP connect) des 1000 ports les plus courants | `nmap 192.168.1.1`          |
| `nmap -p 1-100 <IP>` | Scanne les ports 1 à 100                                    | `nmap -p 1-100 192.168.1.1` |
| `nmap -p- <IP>`      | Tous les ports (1 à 65535) – lent mais complet              | `nmap -p- 192.168.1.1`      |
| `nmap -sS <IP>`      | SYN scan (plus rapide, furtif, nécessite root)              | `sudo nmap -sS 192.168.1.1` |
| `nmap -sV <IP>`      | Détecte version des services (ex: Apache 2.4.41)            | `nmap -sV 192.168.1.1`      |

## Utilisation :

### Commande nmap (IP cible)

![CMD_nmap](Ressources/CMD_nmap.PNG)

* Avec la cette commande vous lancerez un scan des 1000 ports les plus courants, des informations apparaitrons :

* Le nom de la machine cible (Nom + IP)
  
![CMD_nmap_détail_nom](Ressources/CMD_nmap_détail_nom.PNG)

* Les informations sur les 1000 ports :

![CMD_nmap_détail_ports](Ressources/CMD_nmap_détail_ports.PNG)

On comprend alors que sur les 1000 ports 997 sont fermés et que 3 sont ouverts.

### Commande nmap (IP machine) /24

| ![CMD_nmap_balayage](Ressources/CMD_nmap_balayage.PNG) | ![CMD_nmap_balayage_2](Ressources/CMD_nmap_balayage_2.PNG) |
| ------------------------------------------------------ | ---------------------------------------------------------- |

* Avec cette commande vous lancerez un balayage du réseau pour savoir quels machine (actives) sont connectés au réseau, ainsi que les ports ouverts sur les différentes machines.

| Élément               | Signification                 | Détail                                                                                           |
| --------------------- | ----------------------------- | ------------------------------------------------------------------------------------------------ |
|   `nmap`              | Nom du programme              | Outil de scan réseau                                                                             |
|   `172.16.10.20/24`   | Plage d’adresses IP à scanner | C’est tout le réseau local :     de `172.16.10.0` à  `172.16.10.255`     → 256 adresses.         |
|   `/24`               | Notation CIDR*                | Signifie : les 24 premiers bits de l’IP sont fixes → les 8 derniers bits varient (2⁸ = 256 IPs). |

* Le CIDR permet aux routeurs d'organiser plus efficacement les adresses IP en plusieurs sous-réseaux.

### Les options :

| Option     | Rôle                                                | Exemple                                   |
| ---------- | --------------------------------------------------- | ----------------------------------------- |
| `-p`       | Spécifie les ports                                  | `-p 22,80,443` ou `-p 1-1000`             |
| `-sS`      | SYN scan (rapide, furtif) → root requis             | `sudo nmap -sS 192.168.1.1`               |
| `-sT`      | TCP connect scan (sans root)                        | `nmap -sT 192.168.1.1`                    |
| `-sU`      | Scan UDP (lent, mais utile)                         | `sudo nmap -sU -p 53,123,161 192.168.1.1` |
| `-sV`      | Détection de version                                | `nmap -sV 192.168.1.1`                    |
| `-O`       | Détection d’OS (doit être root)                     | `sudo nmap -O 192.168.1.1`                |
| `-A`       | Scan agressif : version + OS + scripts + traceroute | `sudo nmap -A 192.168.1.1`                |
| `--reason` | Montre pourquoi un port est ouvert/fermé            | `nmap --reason 192.168.1.1`               |
| `-v`       | Mode verbeux (plus d’infos)                         | `nmap -v 192.168.1.1`                     |
| `-vv`      | Très verbeux                                        |                                           |



## zenmap
<span id="zenmap"></span>



## netcat
<span id="netcat"></span>




# 2. Utilisation avancée
<span id="utilisation-avancee"></span>

# 3. FAQ
<span id="faq"></span>
