## Method to build arm64 images

```shell
git clone https://github.com/kubesphere/kube-rbac-proxy.git

cd kube-rbac-proxy 

git checkout -b ks-v0.4.1 origin/ks-v0.4.1

docker buildx build -f build/arm64/Dockerfile --output type=docker,dest=kube-rbac-proxy:ks-v0.4.1-arm64.tar --platform linux/arm64 -t kubesphere/kube-rbac-proxy:ks-v0.4.1-arm64 .
```


