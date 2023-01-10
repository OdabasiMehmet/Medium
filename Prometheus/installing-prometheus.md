# Installing Prometheus

Prometheus .......

In this tutorial, I will guide you through installing Prometheus on an Ubuntu instance created through Google Cloud.

1. Go to https://prometheus.io/download/ to obtain the download link for Prometheus

![download](download.jpg)

2. First, update Ubuntu

```bash
sudo apt-get update
```
![update](update.jpg)

3. Use wget to download prometheus 

```bash
wget https://github.com/prometheus/prometheus/releases/download/v2.41.0/prometheus-2.41.0.illumos-amd64.tar.gz
```
![downloaded](downloaded.jpg)

4. Untar the downloaded tar file (extract it)

```bash
tar xvf prometheus-2.41.0.illumos-amd64.tar.gz
```
![files](files.jpg)
