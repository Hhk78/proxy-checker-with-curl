# Çalışma mantığı

Betiğin çalışma mantığı şudur;

curl -x $girdi ip.me

Yani ```bash
./proxycheck.sh < proxylsit.txt```


Ya da tekil proxy test etmek isterseniz;
```bash
./proxycheck.sh <<< "socks5://ip:port"```

yaptığınızda curl o listedeki her satırdan veriyi alır test eder.

# sed yardımı

Proxylist.txt dosyasının formatı 
```bash
socks5://ip:port
http://ip:port
socks4://ip:port```

olmalıdır.

Elinizde ip:port formatında dosya varsa sed ile gereken formata çevirebilirsiniz.


Sed ile bunu yapmak için gereken;
Socks5 için örnek.
```bash
sed 's/^/socks5:\/\//; s/:/:/' socks5-proxy-list.txt -i```


Aynı şekide socks5 yazan yerleri http veya https veyahut socks4 olarak değiştirerek ip:port formatını socks5://ip:port şekline çevirebilirsiniz.






```bash
sed 's/^/http:\/\//; s/:/:/' http-proxy-list.txt -i```
