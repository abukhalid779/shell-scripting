curl -sL https://rpm.nodesource.com/setup_lts.x | bash
echo -e "\e[33m installing catalogue \e[0m"
yum install nodejs -y
echo -e "\e[33m useradd catalogue \e[0m"
useradd roboshop
echo -e "\e[33m mkdir catalogue \e[0m"
mkdir /app
echo -e "\e[33m curl catalogue \e[0m"
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
echo -e "\e[33m nmp catalogue \e[0m"
cd /app
npm install
cp /root/shell-scripting/catalogue.service /etc/systemd/system/catalogue.service

echo -e "\e[33m reload catalogue \e[0m"
systemctl enable catalogue
systemctl daemon-reload
echo -e "\e[33m enable catalogue \e[0m"
systemctl restart catalogue
echo -e "\e[33m enable catalogue \e[0m"
yum install mongodb-org-shell -y
