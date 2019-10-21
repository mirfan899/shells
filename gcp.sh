#!/bin/bash

### Login to specific vm
gcloud compute ssh user@instance-x --zone xx-xxxx-x

### login on vm
gcloud auth login

### Now copy files
### copy files from one vm to another vm gcp(from this vm to another)
gcloud compute scp --recurse files instance-x:/path

### from another vm to this vm
gcloud compute scp --recurse instance-x:/path files

### Resize VM disk size on GCP
gcloud compute disks resize disk_name --size 64GB --zone xxxx-xxxxxxxx-x
# increase sda size
growpart /dev/sda 1
resize2fs /dev/sda1