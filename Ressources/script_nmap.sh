#!/bin/bash

# Nmap doit être installé sur la machine
# Nous affichons les choix de scan pour l'utilisateur :

echo "Choisissez un profil de scan Nmap :"
echo "1) Scan discret (Stealth SYN - furtif)"
echo "2) Scan UDP"
echo "3) Scan agressif (-A)"

# On demande de choisir de 1 à 3 

read -p "Votre choix de scan (1 à 3): " choix

# On demande de renseigner la cible  

read -p "Entrez de la cible (adresse IP) ?" cible

# Les choix sont repartis avec la fonction case.
# sudo est obligatoire pour les types de sacn demandés

case $choix in
  1)
    echo "Scan furtif SYN (stealth scan) sur $cible..." 
    sudo nmap -sS -T2 -Pn "$cible"
    ;;
  2)
    echo "Scan UDP sur $cible..."
    sudo nmap -sU -T4 "$cible" 
    ;;
  3)
    echo "Scan agressif sur $cible..."
    sudo nmap -A -T4 "$cible" 
    ;;

esac
 