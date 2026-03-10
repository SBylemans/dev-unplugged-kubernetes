# Kubernetes

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