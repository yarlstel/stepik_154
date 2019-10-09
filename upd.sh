sudo apt update
sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
cd ..
mkdir tmp
cd tmp
sudo wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
sudo tar xzf Python-3.7.4.tgz

cd Python-3.7.4
sudo ./configure --enable-optimizations


#sudo apt install python3.5
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1

#sudo pip3 install django --upgrade
#sudo pip3 install gunicorn --upgrade
#sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/sbin/gunicorn-debian
#sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/bin/gunicorn
#sudo sed -i -e 's/17.5/19.9.0/' /usr/bin/gunicorn
#sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/bin/gunicorn_django
#sudo sed -i -e 's/17.5/19.9.0/' /usr/bin/gunicorn_django
#sudo sed -i -e 's/\/usr\/bin\/python/\/usr\/bin\/python3/' /usr/bin/gunicorn_paster
#sudo sed -i -e 's/17.5/19.9.0/' /usr/bin/gunicorn_paster
