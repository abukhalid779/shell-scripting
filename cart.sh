echo -e "\e[33m curl cart \e[0m"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash
echo -e "\e[33m install cart \e[0m"
yum install nodejs -y
echo -e "\e[33m useradd cart \e[0m"
useradd roboshop
echo -e "\e[33m mkdir cart \e[0m"
mkdir /app
echo -e "\e[33m curl cart \e[0m"
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app
unzip /tmp/cart.zip
echo -e "\e[33m npm cart \e[0m"
cd /app
npm install
echo -e "\e[33m daemon cart \e[0m"
systemctl daemon-reload
echo -e "\e[33m daemon cart \e[0m"
systemctl enable cart
systemctl restart cart

