pip install 'shadowsocks==2.8.2' --upgrade

wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
tar zxf LATEST.tar.gz
cd libsodium*
./configure
make && make install

echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig

cp -f ssserver.conf /etc/init/ssserver.conf
cp -f ssserver.json /etc/ssserver.json


