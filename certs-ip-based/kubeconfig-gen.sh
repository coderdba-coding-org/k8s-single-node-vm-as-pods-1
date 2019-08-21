# Add the cluster information for 192.168.60.102
kubectl config set-cluster kubernetes \
--certificate-authority=ca.pem \
--embed-certs=true \
--server=https://192.168.60.102:6443 \
--kubeconfig=192.168.60.102.kubeconfig

# Add the credentials for 192.168.60.102.

kubectl config set-credentials system:node:192.168.60.102 \
--client-certificate=192.168.60.102.pem \
--client-key=192.168.60.102-key.pem \
--embed-certs=true \
--kubeconfig=192.168.60.102.kubeconfig

# Add the context for 192.168.60.102.

kubectl config set-context default \
--cluster=kubernetes \
--user=system:node:192.168.60.102 \
--kubeconfig=192.168.60.102.kubeconfig

# Use the context for 192.168.60.102.
kubectl config use-context default --kubeconfig=192.168.60.102.kubeconfig
