#!/bin/bash
echo "======================"
echo " Auto -  Yara"
echo "Crée par Ruben - Hash "
echo "======================"
if [ $# -ne 1 ]; then
    echo "Usage: $0 <nom_signature>"
    exit 1
fi
signature="$1"
echo "Vérifier que vous avez bien installé yarGen et Loki"
python3 ~/yarGen/yarGen.py -m . --excludegood -o ~/Loki/signature-base/yara/"$signature".yar
echo "Rester dans le répertoire cible"
python ~/Loki/loki.py -p .
