!/bin/bash

cd /
mkdir /pub /adm /ven /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Grupo inicial GRP_ADM" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd maria -c "Grupo inicial GRP_ADM" -m -s /bin/bash -p $(openssl passwd 1234566) -G GRP_ADM
useradd joao -c "Grupo inicial GRP_ADM" -m -s  /bin/bash -p $(openssl passwd 123456) -G GRP_ADM

useradd debora -c "Grupo inicial GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd sebastiana -c "Grupo inicial GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd roberto -c "Grupo inicial GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN

useradd josefina -c "Grupo inicial GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd amanda -c "Grupo inicial GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd rogerio -c "Grupo inicial GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /pub
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script criado com sucesso!!!"
