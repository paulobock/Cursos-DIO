#!/bin/bash

echo 'Criando diretórios /Público /Adm /Ven /Sec'
sudo mkdir /Publico /Adm /Ven /Sec

echo 'Criando grupos GRP_ADM, GRP_VEN e GRP_SEC'
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo 'Criando usuários padrão: Carlos, Maria, João, Débora, Sebastiana, Roberto, Josefina, Amanda, Rogério'
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd debora -c "Débora Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo 'Colocando usuário ROOT como dono dos grupos'
chown root:GRP_ADM /Adm
chown root:GRP_VEN /Ven
chown root:GRP_SEC /Sec
chown root:root /Publico

echo 'Permissões para diretório /Publico'
chmod 777 /Publico

echo 'Permissão total apenas no seu grupo e nada nos demais'
chmod 770 /Adm
chmod 770 /Ven
chmod 770 /Sec

echo 'Configuração básica terminada'
echo '##### Colocar permissão de execução no script = chmod +x script_projeto.sh ######'

 