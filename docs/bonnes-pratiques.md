# Bonnes pratiques pour dépenser moins de tokens avec Codex

Ce qui coûte le plus : le **contexte** (tout ce que l'agent lit et garde en mémoire), relu à chaque tour.

## De ton côté
1. **Une tâche = une session.** Ouvre une nouvelle session pour chaque sujet au lieu d'enchaîner dans une conversation qui grossit.
2. **Donne les fichiers concernés** dans ta demande (`src/api/user.ts`, ligne 40) pour éviter l'exploration.
3. **Demandes précises** : objectif, fichier, critère de réussite. Voir `templates/prompt-court.md`.
4. **Utilise le niveau de raisonnement le plus bas qui suffit** pour les petites tâches (renommage, correction simple) ; garde le niveau élevé pour l'architecture ou les bugs difficiles.
5. **Choisis un modèle plus léger** pour les tâches simples, si ta configuration le permet.
6. **Compacte ou recommence** quand la session devient longue (commande de compaction si ta version de Codex la propose, sinon nouvelle session avec un résumé de 5 lignes).
7. **Nettoie le dépôt** : un bon `.gitignore` évite que l'agent tombe sur des fichiers générés.

## Dans le projet
- Garde `AGENTS.md` court (moins de 60 lignes) : il est chargé à chaque session.
- Mets les longues docs dans `docs/` et référence-les seulement quand c'est utile.
- Prévois des commandes de test ciblées et rapides.

## Vérifier sa consommation
- Regarde le compteur de tokens / l'usage affiché par Codex en fin de session et compare avant / après l'application de ces règles.
