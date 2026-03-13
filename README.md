# Kubernetes

# WSL install
## Docker
```bash
sudo snap install docker
```

## kind
```bash
cd && [ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.31.0/kind-linux-amd64
sudo chmod +x kind && sudo mv kind /usr/local/bin/kind
```

## kubectl
```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

## helm
```bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4 | bash
```

## helmfile
```bash
curl -o helmfile.tar.gz https://github.com/helmfile/helmfile/releases/download/v1.4.1/helmfile_1.4.1_windows_amd64.tar.gz
tar -xvzf helmfile.tar.gz
sudo chmod +x helmfile
sudo mv helmfile /usr/local/bin/helmfile

sudo helmfile init
```

## Start cluster

Using kind:
```bash
kind create cluster --config kind/cluster.yml --name ...
```

With registry:
```bash
./kind/create-local-cluster.sh
```

## Deploy using helmfile

```bash
helmfile apply
```