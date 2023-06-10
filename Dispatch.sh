echo -e "\e[33m install dispatch \e[0m"
yum install golang -y
echo -e "\e[33m useradd dispatch \e[0m"
useradd roboshop
echo -e "\e[33m mkdir dispatch \e[0m"
mkdir /app
echo -e "\e[33m curl dispatch \e[0m"
curl -L -o /tmp/dispatch.zip https://roboshop-artifacts.s3.amazonaws.com/dispatch.zip
cd /app
unzip /tmp/dispatch.zip
echo -e "\e[33m app dispatch \e[0m"
cd /app
go mod init dispatch
go get
go build
echo -e "\e[33m daemon dispatch \e[0m"
systemctl daemon-reload
echo -e "\e[33m enable dispatch \e[0m"
systemctl enable dispatch
systemctl restart dispatch