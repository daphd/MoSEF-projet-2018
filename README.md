# MoSEF-projet-2018
## Daphney Dorvelus
### Projet cours linux (oct - nov 2018)

#### Objectifs de ce projet 
Il s'agit d'un projet construit en 8 étapes afin de mettre en pratique nos connaissances acquises durant le cours de linux (principalement en git). 


1- En premier lieu : Forker le dêpot dans notre compte github
Forker un dêpot github consiste à le copier dans son compte personnel. Ainsi, pour forker le dêpot avec les consignes du projet, il nous a fallu nous rendre sur le dêpot source (compte github du professeur) et ensuite cliquer sur "Fork". Le dêpot est tout de suite copié dans notre repo. 
 
2- Cloner ce dêpot en local : 
Pour cloner un dêpot en local, il faut utiliser le code :  `git clone <<chemin du repo distant>>`
qu'on retrouve dans le répertoire distant en cliquant sur "clone or download".

3- Créer un fichier :
On crée un nouveau script avec le code **vim**  

`vim fich_semaine_dernière.sh`

Ce script nous permettra lors de son exécution de souhaiter le bienvenue à l'utilisateur et de lui demander le chemin du répertoire qu'il souhaite consulter. 
              * 

Pour exécuter ce code, il faut faire un **bash** du fichier `fich_semaine_dernière.sh`
 
`bash fich_semaine_dernière.sh`

4- Commiter le fichier : 
Afin de commiter le fichier, il faut : 
* Initialiser le repo 

`git init`

* Ajouter le fichier "fich_semaine_dernière.sh" dans la zone de transit 

`git add fich_semaine_dernière.sh`

* Faire un commit en ajoutant un commentaire 

`git commit -m "ajout fich_semaine_dernière.sh dans le dêpot local" `
    
Après le commit, il faut pousser toutes les modifications dans le répertoire distant en utilisant un **git push**
`git push -u origin master`

5- Créer une nouvelle branche : 
La création d'une nouvelle branche nécessite un  :

`git branch "nom de la nouvelle branche"`
  
dans notre cas, cette branche on l'a nommé *new*. 

6- Editer un script sur une nouvelle branche :
Pour pouvoir éditer le script sur la nouvelle branche, il nous faut d'abord transiter vers cette branche :
 
`git checkout new`

Dans cette partie, on souhaite modifier le script dans la nouvelle branche puis afficher toutes les modifications de moins d'une semaine dans le répertoire saisie par l'utilisateur. 

On peut modifier le script de deux manières : 
* Une fois sur la nouvelle branche, on peut modifier le fichier en faisant un **vim** du fichier. A l'intérieur du script on ajoute le code :

`$Repert find -type f -mtime -7`
 
* On peut aussi utiliser **echo** en tapant directement dans le code dans le console pour modifier le fichier

`echo "find -type f -mtime -7" >> fich_semaine_dernière.sh`

ensuite on fera un **bash** du fichier nous permettra pour d'éxecuter le code et d'afficher les fichiers qui ont été modifiés.
 
A noter que pour afficher les fichiers les plus récents, on peut faire une `sudo updatedb`
 
7-Pousser les changements dans le repo distant :
On utilise un **git push**

`git push origin new`

8- Pull request:

Pour opérer un pull request, il faut se positionner dans le repo distant et cliquer sur *compare and pull request*. En prenant soin de ne pas faire le pull resquest sur la branche master du professeur, mais sur la branche qu'on a forké au début. Une fois selectionné, on clique sur pull request ensuite merge pour fusionner les deux branches. 

9- Merger les branches en local :
Pour merger les deux branches en local, il faut faire un **git merge**

`git merge new` 
  
Cela nous permet de fusionner les modifications réalisées sur la nouvelle branche avec la branche master. 
A noter que, avant de merger les deux branches, il faut se replacer sur la branche master en faisant un git checkout master. 

10- Supprimer "Consignes.md" en local : 
Pour supprimer un fichier, il faut faire un **rm -rf** du fichier.

`rm -rf Consignes.md`
  
On pousse ces modifications dans le repo distant en faisant un **git commit** puis un **git push**
