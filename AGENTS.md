# Règles pour l'agent (économie de tokens)

## Lecture du code
- Ne lis JAMAIS tout le dépôt. Commence par `rg` / `grep` ou `ls` ciblé pour trouver les fichiers utiles.
- Lis uniquement les portions de fichiers nécessaires (plages de lignes), pas les fichiers entiers s'ils dépassent ~200 lignes.
- Ignore : `node_modules/`, `dist/`, `build/`, `.venv/`, `vendor/`, `coverage/`, fichiers `*.lock`, `*.min.js`, images, données volumineuses.
- Ne relis pas un fichier déjà lu dans la session sauf s'il a changé.

## Commandes
- Limite la sortie des commandes : `| head -n 50`, `--quiet`, `-q`, options de test ciblées.
- Lance seulement les tests liés aux fichiers modifiés, pas toute la suite (sauf demande explicite).
- N'affiche jamais de logs complets ; filtre avec `grep -i error` ou `tail -n 40`.

## Modifications
- Fais des changements minimaux et ciblés. Pas de refactor non demandé.
- Ne réécris pas un fichier entier pour changer quelques lignes : utilise des patchs.
- Pas de nouvelle dépendance sans le demander.

## Réponses
- Réponses courtes : ce qui a changé, pourquoi, comment vérifier. Pas de récapitulatif long.
- Ne recopie pas le code modifié dans la réponse : le diff suffit.
- Si la demande est ambiguë, pose UNE question avant d'explorer largement.

## Plan
- Pour une tâche de plus de 3 étapes, écris un plan de 3 à 6 lignes, puis exécute sans le répéter.
- Arrête-toi dès que l'objectif est atteint et vérifié.

## Projet (à adapter)
- Langage : 
- Commande de test ciblée : 
- Commande de lint : 
- Dossiers importants : 
