# codex-economie-tokens

Kit pour réduire la consommation de tokens quand tu utilises Codex (avec un modèle Claude ou un autre).

## Contenu

- `AGENTS.md` : règles lues automatiquement par Codex à la racine d'un projet. Copie-le dans chacun de tes projets.
- `docs/bonnes-pratiques.md` : habitudes de ton côté qui font le plus baisser la facture.
- `templates/prompt-court.md` : modèle de demande compacte.
- `templates/TACHE.md` : fiche de tâche à remplir avant de lancer Codex.
- `scripts/install.sh` : copie `AGENTS.md` et les templates dans un projet existant.

## Installation rapide

```bash
git clone https://github.com/edonouk-spec/codex-economie-tokens.git
cd codex-economie-tokens
./scripts/install.sh /chemin/vers/ton/projet
```

## Tâche pour Codex

Si tu donnes ce dépôt à Codex, demande-lui :

> Lis AGENTS.md et docs/bonnes-pratiques.md, puis adapte AGENTS.md à mon projet (langage, commandes de test, dossiers à ignorer) en gardant le fichier sous 60 lignes.
