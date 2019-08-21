cfssl gencert \
-ca=ca.pem \
-ca-key=ca-key.pem \
-config=ca-config.json \
-hostname=192.168.60.102,ks2 \
-profile=kubernetes kubelet-192.168.60.102-csr.json | \
cfssljson -bare 192.168.60.102
