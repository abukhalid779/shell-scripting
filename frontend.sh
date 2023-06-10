echo -e "\e[33m installing nginx \e[0m"
 yum install nginx -y

echo -e "\e[33m enable nginx \e[0m"
 systemctl enable nginx
 systemctl restart nginx
echo -e "\e[33m share nginx \e[0m"
 rm -rf /usr/share/nginx/html/*
echo -e "\e[33m curl nginx \e[0m"
  curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
echo -e "\e[33m unzip nginx \e[0m"
  cd /usr/share/nginx/html
unzip /tmp/frontend.zip
  cp /root/shell-scripting/Roboshop.conf /etc/nginx/default.d/roboshop.conf
echo -e "\e[33m restartnginx nginx \e[0m"
  systemctl restart nginx





