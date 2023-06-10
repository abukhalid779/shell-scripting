echo -e "\e[33m installing payment \e[0m"
yum install python36 gcc python3-devel -y
echo -e "\e[33m useradd payment \e[0m"
useradd roboshop
echo -e "\e[33m mkdir payment \e[0m"
mkdir /app
echo -e "\e[33m curl payment \e[0m"
curl -L -o /tmp/payment.zip https://roboshop-artifacts.s3.amazonaws.com/payment.zip
cd /app
unzip /tmp/payment.zip
echo -e "\e[33m app payment \e[0m"
cd /app
pip3.6 install -r requirements.txt
echo -e "\e[33m daemon payment \e[0m"
systemctl daemon-reload
echo -e "\e[33m enable payment \e[0m"
systemctl enable payment
systemctl restart payment