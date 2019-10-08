sudo unlink /etc/nginx/sites-enabled/default
sudo unlink /etc/gunicorn.d/test
sudo ln -s /home/box/web/etc/nginx.conf	/etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo ln -s /home/box/web/etc/gunicorn_nginx.conf /etc/gunicorn.d/nginx
sudo /etc/init.d/gunicorn restart
#gunicorn -c etc/gunicorn.conf hello:app
#sudo /etc/init.d/mysql start

