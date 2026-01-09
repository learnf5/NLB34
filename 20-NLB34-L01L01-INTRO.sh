# update lab environment
curl --silent --remote-name-all --output-dir /tmp https://raw.githubusercontent.com/learnf5/$COURSE_ID/main/LB/default.conf
sudo scp /tmp/default.conf nginx:/etc/nginx/conf.d/
