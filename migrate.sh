#!/usr/bin/env bash

#set -x

mysql -h"$MM_DB_HOST" -u"$MM_DB_USER" -p"$MM_DB_PASS"

for i in {30..0}; do
			if echo 'SELECT 1' | mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" &> /dev/null; then
				break
			fi
			echo 'MySQL init process in progress...'
			sleep 1
		done

for f in /var/www/html/docs/schematic/*.sql; do
			case "$f" in
				*.sql)    echo "$0: running $f"; mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" < "$f"; echo ;;
				*.sql.gz) echo "$0: running $f"; gunzip -c "$f" | mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"; echo ;;
				*)        echo "$0: ignoring $f" ;;
			esac
		echo
done
