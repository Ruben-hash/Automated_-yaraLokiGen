# Automated_-yaraLokiGen# Configuration d'Auto-Yara et Loki

Ce dépôt contient un ensemble de scripts et de ressources pour configurer et utiliser les outils Auto-Yara et Loki, développés par Ruben de Hash.

## Script Auto-Yara

Le script `yara_auto.sh` automatise le processus de création de signatures YARA en utilisant `yarGen` et en utilisant `Loki` pour la chasse aux menaces. Il simplifie le processus de création de signatures et garantit que les outils nécessaires sont correctement installés. Le script effectue les actions suivantes :

1. Vérifie si l'argument requis (nom de la signature) est fourni.
2. Génère une signature YARA en utilisant `yarGen` et la place dans le répertoire des signatures de Loki.
3. Lance une analyse Loki sur le répertoire actuel.

### Utilisation

Assurez-vous d'avoir `yarGen` et `Loki` installés avant d'exécuter le script.

```bash
chmod +x yara_auto.sh
./yara_auto.sh <nom_signature>
```

Remplacez `<nom_signature>` par le nom souhaité pour votre signature YARA.


Pour configurer les outils Auto-Yara et Loki, utiliser le script `yara_install.sh`.
