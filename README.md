# Laboratoire 01 - Premier pas avec l'environment de dévelopment

Le but de ce travail pratique est la prise en main de l'environment de dévelopment installé précédemment et la compilation de votre premier programme. Plus nous avancerons dans les travaux pratiques moins vous serez guidé. Pour l'heure avançons pas à pas.

- **Durée**: 2 périodes
- **Date de rendu**: Dimanche soir avant minuit

A la fin de ce travail pratique vous serez en mesure de:

- récupérer les fichiers sources d'un travail pratique depuis GitHub (*clone*);
- apporter vos modifications, ajouter des fichiers;
- soumettre vos changements sur GitHub;
- compiler votre programme;
- le tester;
- comprendre les différents fichiers constituant un projet d'Info1.

## Accès au travail pratique

Pour ce cours nous utilisons le portail *GitHub Classroom* permettant de distribuer des travaux pratiques aux étudiants s'exercant à la programmation. La première étape consiste donc à récupérer l'adresse du devoir depuis Cyberlearn ou Slack. Il vous est ensuite demandé de **joindre** le travail (*assignment*).

![accept-this-assignment](assets/accept-this-assignment.png)

Lors de cette opération une copie du référentiel d'origine est crée avec votre nom. Ce processus de copie s'appelle *fork* (fourchette), cela crée un point d'embranchement entre la copie de référence et votre propre copie que vous pourrez modifier à souhait. Dès lors vous disposerez d'un espace personnel dans lequel vous pourrez apporter vos propres modifications. C'est votre version publiée sous GitHub qui sera utilisée pour l'évaluation du laboratoire.

Après avoir joint le travail vous pouvez vous rendre sur GitHub, dans votre espace de travail

![you-are-ready-to-go](assets/you-are-ready-to-go.png)

Depuis GitHub, vous avez un bouton vert permettant de copier le lien du chemin permettant modifier votre référentiel

![copy-clone-link](copy-clone-link.png)

Vous avez ici le choix entre deux protocoles de communication:

- HTTPS
- GIT+SSH

La première variante utilisera vos identifiants de connection (login et mot de passe) qui vous seront demandés à chaque opération. La deuxième variante utilisera un canal sécurisé en utilisant la clé SSH que vous avez créé lors du précédant labo.

## Clone du référentiel

Lors du travail précédent nous avons installé le programme [Git](https://git-scm.com/docs/git-clone/fr). Il s'agit d'un outil très utilisé par les programmeurs pour suivre l'évolution d'un code source. C'est un outil de gestion de version. GitHub n'est qu'un portal collaboratif pour les utilisateurs de Git.

Pour récupérer votre projet, ouvrez une console **WSL** et faites un clone du référentiel en utilisant le lien copié plus haut:

```console
$ git clone https://github.com/heig-vd-tin/labo-01-yves-chevallier.git
Cloning into 'labo-01-yves-chevallier'...
remote: Enumerating objects: 8, done.
remote: Counting objects: 100% (8/8), done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 8 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (8/8), done.
```

Rendez-vous ensuite dans le répertoire en utilisant la commande `cd` pour *change directory*:

```console
$ cd labo-01-yves-chevallier
```

Depuis cette étape vous pouvez exécuter Visual Studio Code avec:

```console
$ code .
```

Visual Studio Code est exécuté de manière très particulière. C'est le programme Windows qui est exécuté mais il est connecté à votre instance linux on appelle ceci une connection à distance (*remote connection*). En bas à gauche de la fenêtre de Visual Studio Code vous avez un petit logo vert indiquant l'état de la connection à distance avec WSL.

![open-remote](assets/open-remote.png)

Travailler en connection à distance vous permet d'exécuter toutes les commandes Linux depuis Windows. C'est très pratique pour rester compatible avec l'environment normalisé POSIX qui n'est pas disponible depuis Windows seul.

## Installation des extensions

Pour diposer de tout l'arcenal de dévelopment en C/C++ il est nécessaire d'installer des extensions à votre éditeur Visual Studio. Le raccourcis `<CTRL>+<MAJ>+<X>` permet d'ouvrir le panneau d'installation des extensions. Il vous est proposé l'installation des extensions suivantes:

![extensions](assets/extensions.png)

**C/C++** Permet de mieux intéragir avec du code C, il permet de s'interfacer avec un débogueur, d'avoir de l'autocomplétion de code et un correcteur interactif de sytaxe.

**Clang-Format** Permet d'automatiquement formatter le code source, c'est à dire convenablement aligner les différentes lignes du code selon un standard prédéfini.

**EditorConfig** Permet de configurer certaines options propre à chaque type de fichier (nombre de tabulation, type d'encodage, type de fin de ligne, etc.)

Le raccourcis `<CTRL>+<MAJ>+<E>` permet de revenir à l'arborescence de travail.

## Familiarisation avec la structure des fichiers

Prenez connaissance de la structure des fichiers:

```text
.
├── Makefile        # Les directives de compilation
├── README.md       # La donnée du laboratoire
├── assets          # Les images associées au README
├── gcd.c           # Le programme C à compléter / corriger
├── lab.yml         # Une description formelle du laboratoire
└── test            # Les éventuels tests du laboratoire
    └── test.sh     # Le test du programme gcd.c
```

Pour l'heure, le seul fichier qui nous intéresse c'est `gcd.c`. Votre travail c'est de corriger ce programme et de le compiler.

## Compilation

Depuis la console, essayer de compiler votre programme en utilisant le compilateur `gcc`:

```bash
$ gcc gcd.c
gcd.c: In function ‘gcd’:
gcd.c:13:5: error: ‘r’ undeclared (first use in this function)
     r = b;
     ^
gcd.c:13:5: note: each undeclared identifier is reported only once for each function it appears in
gcd.c: In function ‘main’:
gcd.c:30:5: warning: implicit declaration of function ‘printf’ [-Wimplicit-function-declaration]
     printf("%d\n", result + 5);
     ^~~~~~
gcd.c:30:5: warning: incompatible implicit declaration of built-in function ‘printf’
gcd.c:30:5: note: include ‘<stdio.h>’ or provide a declaration of ‘printf’
gcd.c:33:1: error: expected ‘;’ before ‘}’ token
```

Vous constatez toute une série d'erreurs. Votre but c'est de les corriger.
