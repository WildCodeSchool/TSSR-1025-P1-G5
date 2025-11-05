# Analyse et Cartographie des ports réseaux

## Présentation

### Quoi ?

Un port réseau est comme une porte numérotée sur un ordinateur ou un appareil connecté au réseau. Chaque service (ex: site web, e-mail, SSH) écoute sur un numéro de port spécifique.

Exemples classiques :

| Port | Service                   |
| ---- | ------------------------- |
| 80   | Site web (HTTP)           |
| 22   | Connexion sécurisée (SSH) |
| 443  | Site web sécurisé (HTTPS) |
| 25   | E-mail (SMTP)             |
Il y a 65 536 ports (de 0 à 65535). 
Les ports 0–1023 = réservés (IANA), les autres = libres ou personnalisés.

### Qui ?

| Rôle                                            | Responsabilité                                                                     |
| ----------------------------------------------- | ---------------------------------------------------------------------------------- |
| Administrateur réseau (NetAdmin)                | Lance les scans réguliers (Nmap, SolarWinds), surveille les ports ouverts.         |
| Responsable Sécurité des Systèmes d'Information | Analyse les résultats, détecte les anomalies (ports suspects, appareils inconnus). |
| Pentester / Auditeur cybersécurité              | Utilise Nmap en mode avancé pour tester la sécurité (avec autorisation).           |
| Équipe NOC (Network Operations Center)          | Utilise des outils comme SolarWinds UDT ou PRTG pour surveiller en continu.        |

### Objectif

| Objectif        | Explication                                                                            |
| --------------- | -------------------------------------------------------------------------------------- |
| Sécurité        | Trouver les portes ouvertes par erreur → un pirate peut entrer !                       |
| Inventaire      | Savoir quels appareils et services sont sur le réseau (ex: imprimantes, serveurs, PC). |
| Dépannage       | Un service ne marche pas ? → Vérifier si le port est ouvert et utilisé.                |
| Surveillance    | Voir qui se connecte où, détecter les appareils suspects (rogue devices).              |
| Capacité réseau | Voir combien de ports sont utilisés sur un switch → éviter la saturation.              |

### Outils

| Outil          | Type                            | Gratuit ?             | Usage principal                                       |
| -------------- | ------------------------------- | --------------------- | ----------------------------------------------------- |
| Nmap           | Scanner de ports & cartographie | Oui (open source)     | Découvrir les appareils, ports ouverts, services, OS  |
| SolarWinds UDT | Outil pro de suivi              | Non (essai 30j)       | Suivi des utilisateurs, ports, alertes, arrêt de port |
| Paessler PRTG  | Surveillance tout-en-un         | Oui (version limitée) | Cartes, alertes, statut en temps réel                 |
| Spiceworks     | Outil gratuit simple            | Oui                   | Cartographie manuelle basique                         |
| Device42       | Gestion d’infrastructure        | Non                   | Découverte auto, dépendances                          |

Il est conseillé de commencer par Nmap (gratuit + puissant)
