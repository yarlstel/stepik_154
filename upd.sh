sudo pip3 install django --upgrade
sudo pip3 install gunicorn --upgrade
sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/sbin/gunicorn-debian
sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/bin/gunicorn
sudo sed -i -e 's/17.5/19.9.0/' /usr/bin/gunicorn
sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/bin/gunicorn_django
sudo sed -i -e 's/17.5/19.9.0/' /usr/bin/gunicorn_django
sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/bin/gunicorn_paster
sudo sed -i -e 's/17.5/19.9.0/' /usr/bin/gunicorn_paster
