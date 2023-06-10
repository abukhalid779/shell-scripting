echo -e "\e[33m curl Rabbitmq \e[0m"
curl -s https://packagecloud.io/install/repositories/rabbitmq/erlang/script.rpm.sh | bash
echo -e "\e[33m curl Rabbitmq \e[0m"
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | bash
echo -e "\e[33m installing Rabbitmq \e[0m"
yum install rabbitmq-server -y
echo -e "\e[33m enable Rabbitmq \e[0m"
systemctl enable rabbitmq-server
systemctl restart rabbitmq-server
echo -e "\e[33m setpermission Rabbitmq \e[0m"
rabbitmqctl add_user roboshop roboshop123
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"
