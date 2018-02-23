yum install -y logrotate crontabs
[ -f /etc/logrotate.d/nginxlog ] || cp ./nginx /etc/logrotate.d/
[ -f /etc/logrotate.d/redis ] || cp ./redis /etc/logrotate.d/
[ -f /etc/logrotate.d/zabbix-agent ] || cp ./zabbix-agent /etc/logrotate.d/
[ -f /etc/logrotate.d/php-fpm ] || cp ./php-fpm /etc/logrotate.d/
if [ ! -f /etc/cron.daily/logrotate ]
    then 
    cp ./logrotate /etc/cron.daily/logrotate
fi

