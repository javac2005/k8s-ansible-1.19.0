#!/bin/bash

#更新
yum -y update

#安装git
yum -y install git

#安装ansible
yum install -y ansible

#配置私钥
cat > ~/.ssh/id_rsa <<EOF
#将私钥的内容全部粘贴到次数
EOF

#修改私钥权限
chmod 600 ~/.ssh/id_rsa

#配置公钥
cat > ~/.ssh/id_rsa.pub <<EOF
#将公钥的内容全部粘贴到次数
EOF

#修改公钥权限
chmod 600 ~/.ssh/id_rsa.pub

#git clone安装脚本
git clone https://github.com/javac2005/ansible-k8s-1.19.0.git

cd ansible-k8s-1.19.0
