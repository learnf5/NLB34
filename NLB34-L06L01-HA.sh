# enable debugging
set -x
PS4='+$(date +"%T.%3N"): '

# update lab environment
sudo ssh nginx test -e /etc/nginx/conf.d/default.conf && sudo ssh nginx rm /etc/nginx/conf.d/default.conf
curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/NLB34/main/NLB34-L05L01-TCP/main.conf
sudo scp /tmp/main.conf nginx:/etc/nginx/conf.d/
curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/NLB34/main/NLB34-L06L01-HA/nginx.conf
sudo scp /tmp/nginx.conf nginx:/etc/nginx/

#Add nginx license to nginx2 lab system, required for keepalived setup
sudo scp /tmp/nginx-one-eval.crt nginx2:/etc/ssl/nginx/nginx-repo.crt
sudo scp /tmp/nginx-one-eval.key nginx2:/etc/ssl/nginx/nginx-repo.key
sudo scp /tmp/nginx-one-eval.jwt nginx2:/etc/nginx/license.jwt

#This tcp directory created in lab 5, so it should carry on
sudo ssh nginx mkdir /etc/nginx/tcp
curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/NLB34/main/NLB34-L06L01-HA/tcp_lb.conf
sudo scp /tmp/tcp_lb.conf nginx:/etc/nginx/tcp

#Add nginx servers to /etc/hosts file
curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/NLB34/main/NLB34-L06L01-HA/hosts
sudo scp /tmp/hosts nginx:/etc/hosts
sudo scp /tmp/hosts nginx2:/etc/hosts
