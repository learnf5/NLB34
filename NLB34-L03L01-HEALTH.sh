# enable debugging
set -x
PS4='+$(date +"%T.%3N"): '

# update lab environment
sudo ssh nginx test -e /etc/nginx/conf.d/default.conf && sudo ssh nginx rm /etc/nginx/conf.d/default.conf
curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/NLB34/main/NLB34-L03L01-HEALTH/main.conf
sudo scp /tmp/main.conf nginx:/etc/nginx/conf.d/
