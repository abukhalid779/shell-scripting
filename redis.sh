echo -e "\e[33m installing redis \e[0m"
yum install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y
echo -e "\e[33m module redis \e[0m"
yum module enable redis:remi-6.2 -y
echo -e "\e[33m installing redis \e[0m"
yum install redis -y
echo -e "\e[33m enable redis \e[0m"
systemctl enable redis
systemctl start redis

