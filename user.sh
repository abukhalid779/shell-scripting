echo -e "\e[33m curl user \e[0m"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash
echo -e "\e[33m installing user \e[0m"
yum install nodejs -y
echo -e "\e[33m useradd user \e[0m"
useradd roboshop
echo -e "\e[33m mkdir user \e[0m"
mkdir /app
echo -e "\e[33m curl user \e[0m"
curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip
cd /app
unzip /tmp/user.zip
echo -e "\e[33m npm user \e[0m"
cd /app
npm install
echo -e "\e[33m daemon user \e[0m"
systemctl daemon-reload
echo -e "\e[33m enable user \e[0m"
systemctl enable user
systemctl restart user
echo -e "\e[33m mongodb user \e[0m"
yum install mongodb-org-shell -y
echo -e "\e[33m server user \e[0m"
mongo --host MONGODB-SERVER-IPADDRESS </app/schema/user.js
