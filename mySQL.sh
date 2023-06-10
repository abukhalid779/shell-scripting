echo -e "\e[33m disable mySQL \e[0m"
yum module disable mysql -y
echo -e "\e[33m installing mySQL \e[0m"
yum install mysql-community-server -y
echo -e "\e[33m enable mySQL \e[0m"
systemctl enable mysqld
systemctl restart mysqld
echo -e "\e[33m secure mySQL \e[0m"
mysql_secure_installation --set-root-pass RoboShop@1
echo -e "\e[33m uroot mySQL \e[0m"
mysql -uroot -pRoboShop@1
