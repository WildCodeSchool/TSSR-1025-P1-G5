### 1. C’est quoi un « port réseau » ?
Un port est un **numéro logique** (0 à 65 535) qui permet à un ordinateur de savoir **quelle application** doit recevoir un paquet réseau.

Exemples célèbres :
- 22   → SSH
- 80   → HTTP
- 443  → HTTPS
- 3389 → RDP (Windows)

### 2. Pourquoi faire de l’analyse / cartographie de ports ?
- **Sécurité** : découvrir les services exposés (et donc attaquables)
- **Audit** : vérifier que seuls les ports nécessaires sont ouverts
- **Cartographie** : dessiner la « surface d’attaque » d’un réseau

### 3. Les 3 grandes étapes
```
Étape 1 : Découverte des hôtes vivants  
Étape 2 : Scan de ports  
Étape 3 : Identification des services + cartographie
```

### 4. Outils stars (et commandes en 1 ligne)

#### Étape 1 – Qui est vivant ?
```bash
nmap -sn 192.168.1.0/24          # ping sweep rapide
fping -g 192.168.1.0/24          # ultra-rapide
```

#### Étape 2 – Scan de ports
```bash
# Scan complet TCP (lourd mais complet)
sudo nmap -p- -T4 192.168.1.55

# Scan rapide des 1000 ports les + courants
nmap -F 192.168.1.55

# Scan TCP + UDP (les 100 ports UDP les + courants)
sudo nmap -sS -sU --top-ports 100 192.168.1.55
```

#### Étape 3 – Identification + version
```bash
nmap -sV -O -p 22,80,443 192.168.1.55
# -sV = version du service
# -O = détection OS
```

### 5. Cartographier visuellement (2 outils magiques)

#### A. Nmap → XML → dessin automatique
```bash
# 1. Génère un fichier XML
sudo nmap -oX carte.xml -sS -sV -O 192.168.1.0/24

# 2. Transforme en carte interactive
xsltproc carte.xml -o carte.html
# → ouvre carte.html dans ton navigateur
```

#### B. Zenmap (GUI officielle de Nmap)
```
nmap → "Scan" → "Topology" → tu zooms, tu cliques, tu exportes en PNG
```

#### C. Draw.io + CSV
```bash
nmap -oG - 192.168.1.0/24 | awk '/Up/{print $2","$3}' > hosts.csv
# Importe hosts.csv dans draw.io → diagramme réseau en 3 clics
```

### 6. Exemple de cartographie en 5 minutes
```
192.168.1.1  (routeur)
   ├─22/tcp  open  SSH OpenSSH 8.9
   ├─80/tcp  open  HTTP Apache 2.4
   └─443/tcp open  HTTPS

192.168.1.55 (serveur)
   ├─22/tcp  open  SSH
   ├─3306/tcp open MySQL
   └─3389/tcp open RDP
```

### 7. Astuces de pro
- `--reason` : voir pourquoi un port est ouvert/fermé
- `-sC` : scripts NSE par défaut (vulnérabilités rapides)
- `--traceroute` : voir le chemin réseau
- `-oA sortie` : sauvegarde TOUS les formats (normal, greppable, XML)

### 8. Mini-script tout-en-un (copie-colle)
```bash
#!/bin/bash
TARGET=$1
sudo nmap -sS -sV -O -p- --reason -oX $TARGET.xml $TARGET
xsltproc $TARGET.xml -o $TARGET.html
echo "Carte prête → ouvre $TARGET.html"
```

### 9. Ressources gratuites
- Cheat sheet Nmap : nmap.org
- Scripts NSE : `/usr/share/nmap/scripts/`
- Livre gratuit : “Nmap Network Scanning” (PDF officiel)
