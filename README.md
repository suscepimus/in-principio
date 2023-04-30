# In principio…

Hic incipit omnia! Ce dépôt a pour but d'aider à débuter pour la saisie de partitions grégoriennes avec le logiciel [Gregorio](http://gregorio-project.github.io/).

## Utiliser Gregorio en ligne

On ne présentera pas ici Gregorio. Disons uniquement que le logiciel peut être utilisé soit en local, soit en ligne.

Présentons ici quelques outils parmi d'autres:
- [Transcriber](https://bbloomf.github.io/jgabc/transcriber.html) qui permet de visualiser lors de la frappe la partition notée. Cet outil est à privilégier pour les hymnes. Il permet aussi de respecter au plus proche la syllabation latine appliquée à Solesmes (à vérifier).
- [Source & summit](https://www.sourceandsummit.com/editor/alpha) permet une mise en page directement sur la page web à différents formats dont le pdf et le png. Pratique pour un usage ponctuel.
- [Gregoriochant](https://run.gregoriochant.org/cgi/process.pl) a l'avantage de faire tourner un vrai moteur TeX avec la version 5.2.1 de Gregorio (une des plus récentes)
- [Gregobase](https://gregobase.selapa.net/scores.php) offre de nombreuses partitions, de qualité variable mais très riche.

Pour les livres plus complets, il sera conseillé de prendre en main le logiciel TeX en local, ou via l'application [Overleaf](https://fr.overleaf.com) en ligne.

Consulter le dossier [tutoriels](tutoriels).


## Utiliser Gregorio en local (section à compléter)
TeX et Gregorio
Git
terminal
Notepad/Sublime Text

- Un fichier [Gregorio.xml](notepad/gregorio.xml) pour utiliser la mise en relief syntaxique des fichiers .gabc dans l'éditeur de texte [Notepad++](https://notepad-plus-plus.org/fr/). La plupart des caractéristiques du langage sont prises en compte. Il faudrait encore développer la partie nabc (notation neumatique ancienne). Les couleurs peuvent être changées facilement au besoin.
- Un fichier [TestLangage.gabc](notepad/TestLangage.gabc) qui contient à peu près tout pour tester cette coloration.

outils de traitement avec :
nom:    LuaLaTeX+se
programme:  lualatex
arguments:  --shell-escape
    $synctexoption
    $fullname


### tester la configuration en local

À créer: fichier de test simple.



## Protocole

### nommage des pièces
Un [protocole](nommage/prefixes.pdf) donne une liste indicative des premiers caractères de chaque nom de pièces.
Le préfixe est suivi des 2 ou 3 premiers mots de la pièce pour son identification, chaque mot commençant par une majuscule. Ex: l'introït Ex Sion sera nommé `IN-ExSion.gabc`.
Pour les antiennes alléuiatiques du temps pascal, nous proposons de les distinguer par le nombre de fois qu'est chanté l'alléluia, leur mode et terminaison, puis d'une lettre d'ordre. Ex: `AA-3-1f-a.gabc`.

### en-tête des fichiers
On peut utiliser l'ensemble des en-têtes que l'on veut (la liste proposée sur le site n'est pas exaustive). On s'appliquera à avoir toujours le `name` et le `transcriber`. Le `mode`, et l'`office-part` sont à indiquer si possible.

### notation
De par sa logique, le langage gabc doit être plutôt envisagé comme une notation générique, le plus simple est souvent le mieux, et il faut se garder, autant que possible de la copie servile des ouvrages sources, la mise en page de destination ayant souvent d'autres contraintes.

### syllabation
On peut utiliser [ce site](http://gregorio-project.github.io/hyphen-la) pour découper les mots selon les bonnes syllabes rapidement.



## Notation gabc

Outre la notation grégorienne, Gregorio permet de saisir la notation neumatique. Cette utilisation est encore le fait d'une communauté limitée mais pourrait être explorée.
Ad tempus, quelques fichiers sont dans le dossier [nabc](nabc).


###############################################
# PoC: Logic in Gregorio scores
Voir le dossier [optimisation](optimisation). À construire.

This repository contains a proof of concept related to the discussion
([1](https://groups.google.com/d/msgid/gregorio-users/4fba1e2b-f5aa-40f2-9a34-2b42e7d33c50n%40googlegroups.com),
[2](https://groups.google.com/d/msgid/gregorio-users/5bb002d7-0d7b-49c4-af6d-3a18af214726n%40googlegroups.com))
about possible
introduction of logic constructs in the [gabc](http://gregorio-project.github.io/gabc/index.html)
chant notation language.
It demonstrates that functionality like conditional use of a part of a score
or inclusion of another file's contents is readily available from existing tools,
e.g. the C preprocessor, and there is no need to add such capabilities to the gabc
language itself.

## Building

Run `make` to build the example LaTeX document.

## How it works

`Makefile` orchestrates the build:

- `.gabc.cpp` files contain gabc code and C preprocessor directives
- `cpp` (the C preprocessor) processes the directives, producing `.gabc` files with pure gabc code
  (more than one different `.gabc` files may be produced from a single `.gabc.cpp` file,
  depending on its contents)
- the `.gabc` scores are included in the LaTeX document as usual



# Divers à construire

gabctk
hyphenator
