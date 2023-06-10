echo -e "\e[33m installing shipping \e[0m"
yum install maven -y
echo -e "\e[33m useradd shipping \e[0m"
useradd roboshop
echo -e "\e[33m mkdir shipping \e[0m"
mkdir /app
echo -e "\e[33m curl shipping \e[0m"
curl -L -o /tmp/shipping.zip https://roboshop-artifacts.s3.amazonaws.com/shipping.zip
cd /app
unzip /tmp/shipping.zip
echo -e "\e[33m mvn shipping \e[0m"
cd /app
mvn clean package
mv target/shipping-1.0.jar shipping.jar
echo -e "\e[33m daemon shipping \e[0m"
systemctl daemon-reload
echo -e "\e[33m enable shipping \e[0m"
systemctl enable shipping
systemctl restart shipping
echo -e "\e[33m installing shipping \e[0m"
yum install mysql -y
echo -e "\e[33m server shipping \e[0m"
mysql -h <MYSQL-SERVER-IPADDRESS> -uroot -pRoboShop@1 < /app/schema/shipping.sql