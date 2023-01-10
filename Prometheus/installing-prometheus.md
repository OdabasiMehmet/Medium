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
tar xvf prometheus-2.41.0.linux-amd64.tar.gz
```
![files](files.jpg)

5. Check the list of files and directories

```bash
ls -l
```
![directory](directory.jpg)

6. cd into the directory

```bash
cd prometheus-2.41.0.linux-amd64/
```
7. Start prometheus service
```bash
./prometheus
```
![started](started.jpg)

8. Do not close the terminal window unless you want to stop Prometheus

9. Go to your browser and check Prometheus

```bash
http://localhost:9090
```

10. If you are using cloud service like Google Cloud or AWS, you need to provide permissions for port 9090. You can do it by editing inbound rules for AWS and adding TCP 9090 from anywhere 0.0.0.0/0.
Since I am using Google Cloud for this project, I will add a firewall rule for port 9090

![gcloud](gcloud1.jpg)

![port](firewall.jpg)

11. Then enter your public IP address followed by :9090

```bash
http://34.127.56.36:9090/
```

![prometheus](prometheus.jpg)

12. Enter `up` in the search field and click on `execute` to see the running systems. Even without managing scrap features, prometheus is scraping the instance it is running on. 

![own](up.jpg)