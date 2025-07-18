#!/bin/bash

nginx_conf_path=/etc/nginx/nginx.conf

if [[ -n "$USERNAME" ]] && [[ -n "$PASSWORD" ]]
then
	htpasswd -bc /etc/nginx/htpasswd $USERNAME $PASSWORD
	echo Done.
else
    echo Using no auth.
	sed -i 's%auth_basic "Restricted";% %g' $nginx_conf_path
	sed -i 's%auth_basic_user_file htpasswd;% %g' $nginx_conf_path
fi

if [[ -n "$CLIENT_BODY_TEMP_PATH" ]]
then
	sed -i "s%client_body_temp_path;%client_body_temp_path $CLIENT_BODY_TEMP_PATH;%g" $nginx_conf_path
	echo Done.
else
    echo Using no auth.
	sed -i 's%client_body_temp_path;% %g' $nginx_conf_path
fi
