# MoSEF-projet-2018

Il s'agit d'un projet construit en 8 etapes afin de mettre en pratique nos connaissances acquises durant le cours de linux. 
Le fichier "Consignes.md" sur le github du professuer détail ces étapes. 

1- En premier lieu : Forker le dêpot dans notre compte github
Forker un dêpot consiste à copier un dêpot github sur notre compte. Ainsi, pour forker le dêpot avec les consignes du projet,il faut se rendre sur le github du professeur et ensuite cliquer sur "Fork". Le dêpot sera copié sur notre compte github personnel. 
 
2- Cloner ce dêpot en local : 
Pour cloner un dêpot en local, il faut utiliser le code : 
     #### git clone <<lien URL>>
qu'on retrouve dans le répertoire distant en cliquant sur "cloneor download".

3- Créer un fichier :
On crèe un nouveau script avec le code **vim**  
     #### vim fich_semaine_dernière.sh

Ce script nous permettra lors de son exécution de souhaiter le bienvenue à l'utilisateur et de lui demander lenom du répertoire qu'il souhaite utiliser. Pour executer ce code, il faut faire un **bash** du script

          #### bash fich_semaine_dernière.sh

4- Commiter le fichier : 
Afin de commiter le fichier, il nous faut d'abord initialiser le repo puis ensuite ajouter le fichier "fich_semaine_dernière.sh" dans la zone de transit #### git add fich_semaine_dernière.sh. Ensuite faire un commit #### git commit -m "fich_semaine_dernière.sh" 
Après le commit, il faut pousser toutes les modifications dans le répertoire distant en utilisant un **git push**

           #### git push -u origin master

5- Créer une nouvelle branche : 
La création d'une nouvelle branche nécessite un  :
    #### git branch "nom de la branche" 
dans notre cas, cette branche on l'a nommé *new*

6- Editer un script sur une nouvelle branche :
Pour pouvoir éditer le script sur la nouvelle branche, il nous faut d'abord transiter vers cette branche :
#### git checkout new

Dans cette partie, on souhaite afficher toutes les modifications de moins d'une semaine dans le répertoire saisie par l'utilisateur. 
 on peut : 
* Une fois sur la nouvelle branche, on peut modifier le fichier en faisant un **vim** du fichier.
#### $Repert find -type f -mtime -7
* ou en utilisant directement le code
#### echo "find -type f -mtime -7" >> fich_semaine_dernière.sh

7-Pousser les changements dans le repo distant :
On utilise un **git push**
#### git push origin new

8- Pull request:
Pour opérer un pull request
 
