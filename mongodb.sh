cp /root/shell-scripting/Mongodb-repo /etc/yum.repos.d/mongodb.repo

echo -e "\e[33m installing mongodb \e[0m"
yum install mongodb-org -y
echo -e "\e[33m enable mongodb \e[0m"
systemctl enable mongod
systemctl restart mongod
echo -e "\e[33m restart mongodb \e[0m"
systemctl restart mongod
