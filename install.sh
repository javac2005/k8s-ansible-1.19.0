#!/bin/bash

#更新
yum -y update

#安装git
yum -y install git

#安装ansible
yum install -y ansible

#配置私钥
cat > ~/.ssh/id_rsa.pub <<EOF
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEApRDpw5Ok+E ……
-----END RSA PRIVATE KEY-----
EOF

#修改私钥权限
chmod 600 ~/.ssh/id_rsa

#配置公钥
cat > ~/.ssh/id_rsa.pub <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAAD ……
EOF

#修改公钥权限
chmod 600 ~/.ssh/id_rsa.pub

#git clone安装脚本
git clone https://github.com/javac2005/ansible-k8s-1.19.0.git

cd ansible-k8s-1.19.0