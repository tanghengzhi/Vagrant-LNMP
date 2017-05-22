# 安装 openssl
sudo apt install openssl

# 创建必要的文件
mkdir -p demoCA/newcerts

touch demoCA/index.txt demoCA/serial

echo 01 > demoCA/serial

# 生成自签名证书
openssl genrsa -out cakey.pem 2048

openssl req -new -x509 -key cakey.pem -out cacert.pem

openssl genrsa -out nginx.key 2048

openssl req -new -key nginx.key -out nginx.csr

openssl ca -in nginx.csr -out nginx.crt -cert cacert.pem -keyfile cakey.pem -extfile v3.ext

# 删除不必要的文件
rm -rf demoCA

rm -f cakey.pem nginx.csr