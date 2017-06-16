cd /etc/pki/tls/certs 
openssl req -x509 -nodes -newkey rsa:2048 -keyout vsftpd.pem -out vsftpd.pem -days 365
chmod 400 vsftpd.pem
