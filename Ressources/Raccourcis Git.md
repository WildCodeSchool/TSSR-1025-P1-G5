### **1. Configuration initiale**
```bash
git config --global user.name "Ton Nom"
git config --global user.email "ton.email@example.com"
git config --global core.editor "nano"  # ou vim, code, etc.
git config --list  # Voir la config actuelle
```

---

### **2. Créer / Cloner un dépôt**
```bash
git init                    # Initialiser un nouveau dépôt local
git clone https://github.com/user/repo.git  # Cloner un dépôt distant
git clone https://github.com/user/repo.git mon-dossier  # Cloner dans un dossier spécifique
```

---

### **3. Gestion des fichiers (staging)**
```bash
git status                  # Voir l’état des fichiers
git add fichier.txt         # Ajouter un fichier spécifique
git add .                   # Ajouter tous les fichiers modifiés
git add *.js                # Ajouter tous les fichiers .js
git reset fichier.txt       # Retirer un fichier du staging
git reset                   # Retirer tous les fichiers du staging
```

---

### **4. Commits**
```bash
git commit -m "Message clair"                  # Commit direct
git commit -am "Message"                       # Add + commit (fichiers déjà suivis)
git commit --amend -m "Nouveau message"        # Modifier le dernier commit
git commit --amend --no-edit                   # Ajouter au dernier commit sans changer le message
```

---

### **5. Branches**
```bash
git branch                     # Lister les branches locales
git branch nom-branche         # Créer une branche
git checkout nom-branche       # Passer à une branche
git switch nom-branche         # (Git 2.23+) même que checkout
git switch -c nouvelle-branche # Créer et passer à une nouvelle branche
git branch -d nom-branche      # Supprimer une branche (fusionnée)
git branch -D nom-branche      # Forcer la suppression
git branch -m ancien nouveau   # Renommer une branche
```

---

### **6. Fusion (merge)**
```bash
git merge nom-branche          # Fusionner une branche dans la actuelle
git merge --abort              # Annuler une fusion en cours
git mergetool                  # Lancer l’outil de résolution de conflits
```

---

### **7. Dépôt distant (remote)**
```bash
git remote -v                 # Lister les remotes
git remote add origin https://github.com/user/repo.git
git remote set-url origin https://nouveau-url.git  # Changer l’URL
git remote remove origin       # Supprimer un remote
```

---

### **8. Synchronisation avec le distant**
```bash
git fetch                      # Récupérer les changements sans fusion
git pull                       # fetch + merge (équivaut à fetch + merge)
git pull --rebase              # Rebase au lieu de merge
git push origin main          # Pousser la branche main
git push -u origin feature/x   # Pousser et lier la branche locale
git push --force-with-lease    # Forcer avec sécurité
git push --delete origin tagname  # Supprimer une branche/tag distant
```

---

### **9. Stash (mettre de côté temporairement)**
```bash
git stash                      # Sauvegarder les modifs en cours
git stash save "Message"       # Avec message
git stash list                 # Voir les stashs
git stash apply                # Réappliquer le dernier stash
git stash apply stash@{2}      # Appliquer un stash spécifique
git stash pop                  # Appliquer et supprimer
git stash drop stash@{0}       # Supprimer un stash
git stash clear                # Tout supprimer
```

---

### **10. Historique et inspection**
```bash
git log                        # Historique complet
git log --oneline              # Une ligne par commit
git log --graph --oneline --all
git log --author="Nom"
git log --since="2025-01-01"
git log --grep="fix"           # Chercher dans les messages
git show HEAD                  # Voir le dernier commit
git show HEAD~2                # Voir le commit d’il y a 2
git diff                       # Différences non stagées
git diff --staged              # Différences stagées
git diff branche1..branche2    # Diff entre branches
```

---

### **11. Tags**
```bash
git tag                        # Lister les tags
git tag v1.0.0                 # Créer un tag léger
git tag -a v1.0.0 -m "Version stable"  # Tag annoté
git push origin v1.0.0         # Pousser un tag
git push origin --tags         # Pousser tous les tags
git tag -d v1.0.0               # Supprimer localement
git push origin :refs/tags/v1.0.0  # Supprimer distant
```

---

### **12. Annuler des changements**
```bash
git restore fichier.txt        # Annuler les modifs non commitées
git restore --staged fichier.txt  # Retirer du staging
git reset --hard HEAD~1        # Supprimer le dernier commit (attention !)
git reset --soft HEAD~1        # Garder les changements en staging
git revert HEAD                # Créer un commit qui annule le dernier
git checkout HEAD -- fichier.txt  # (ancien) restaurer fichier
```

---

### **13. Rebase**
```bash
git rebase nom-branche         # Réappliquer les commits sur une autre branche
git rebase -i HEAD~3           # Rebase interactif (réorganiser, squash, etc.)
git rebase --continue          # Continuer après résolution de conflit
git rebase --abort             # Annuler le rebase
```

---

### **14. Nettoyage**
```bash
git clean -n                   # Voir ce qui sera supprimé
git clean -fd                  # Supprimer fichiers + dossiers non suivis
git gc                         # Nettoyer le dépôt (optimisation)
```

---

### **15. Alias utiles (à ajouter dans `~/.gitconfig`)**
```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'  # Interface graphique
```

---

**Astuce** : Tape `git [commande] --help` pour avoir l’aide détaillée (ex: `git merge --help`).
