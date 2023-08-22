#!/bin/bash

echo "======================"
echo " Install -  Yara"
echo "Crée par Ruben - Hash "
echo "======================"

mkdir Auto_yara
mv yara_auto.sh ~/Auto_yara
cd Auto_Yara

git clone https://github.com/Neo23x0/yarGen.git
cd yarGen
pip install -r requirements.txt
python yarGen.py --update

cd ..

git clone https://github.com/Neo23x0/Loki.git
cd Loki
sudo pip install colorama yara-python psutil rfc5424-logging-handler netaddr
sudo python loki-upgrader.py
sudo python loki.py


cd
