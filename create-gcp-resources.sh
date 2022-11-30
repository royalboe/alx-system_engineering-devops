#!/usr/bin/bash

# Variables
NETWORK_NAME=mynetwork
PROJECT=qwiklabs-gcp-01-99a5c9390b5c
CUSTOM_NETWORK=managementnet
BUCKET_NAME=royalboe-bucket
ZONE_EU=europe-west1-c
ZONE_US=us-west4-b
VM_AUTO_MODE=my-eu-vm
CUSTOM_VM=management-us-vm
REGION=us-central

# Deploy an app to app engine

# Make a directory to clone the folder into
mkdir gcp-course && cd gcp-course

# Clone into the directory
git clone https://GitHub.com/GoogleCloudPlatform/training-data-analyst.git

# Move into the cloned directory
cd training-data-analyst/courses/design-process/deploying-apps-to-gcp

# Add configuration to the app yaml file
echo 'runtime: python37' >> app.yaml

# Create an app engine application
gcloud app create --region=$REGION

# Deploy the app
gcloud app deploy --version=one --quiet



# Create an auto mode Network
gcloud compute networks create $NETWORK_NAME --project=$PROJECT --subnet-mode=auto --mtu=1460 --bgp-routing-mode=regional

# Create firewall for auto mode network
gcloud compute firewall-rules create mynetwork-allow-custom --project=$PROJECT --network=projects/$PROJECT/global/networks/$NETWORK_NAME --description=Allows\ connection\ from\ any\ source\ to\ any\ instance\ on\ the\ network\ using\ custom\ protocols. --direction=INGRESS --priority=65534 --source-ranges=10.128.0.0/9 --action=ALLOW --rules=all

gcloud compute firewall-rules create $NETWORK_NAME-allow-icmp --project=$PROJECT --network=projects/$PROJECT/global/networks/$NETWORK_NAME --description=Allows\ ICMP\ connections\ from\ any\ source\ to\ any\ instance\ on\ the\ network. --direction=INGRESS --priority=65534 --source-ranges=0.0.0.0/0 --action=ALLOW --rules=icmp

gcloud compute firewall-rules create $NETWORK_NAME-allow-rdp --project=$PROJECT --network=projects/$PROJECT/global/networks/$NETWORK_NAME --description=Allows\ RDP\ connections\ from\ any\ source\ to\ any\ instance\ on\ the\ network\ using\ port\ 3389. --direction=INGRESS --priority=65534 --source-ranges=0.0.0.0/0 --action=ALLOW --rules=tcp:3389

gcloud compute firewall-rules create $NETWORK_NAME-allow-ssh --project=$PROJECT --network=projects/$PROJECT/global/networks/$NETWORK_NAME --description=Allows\ TCP\ connections\ from\ any\ source\ to\ any\ instance\ on\ the\ network\ using\ port\ 22. --direction=INGRESS --priority=65534 --source-ranges=0.0.0.0/0 --action=ALLOW --rules=tcp:22

# Create a custom network

gcloud compute networks create $CUSTOM_NETWORK --subnet-mode=custom
gcloud compute networks subnets create privatesubnet-us --network=$CUSTOM_NETWORK --region=us-west4 --range=172.16.0.0/24
gcloud compute networks subnets create privatesubnet-eu --network=$CUSTOM_NETWORK --region=europe-west1 --range=172.20.0.0/20
gcloud compute networks list

# Lists available subnets sorted by network

gcloud compute networks subnets list --sort-by=NETWORK

# To create firewall rules
gcloud compute --project=$PROJECT firewall-rules create $CUSTOM_NETWORK-allow-icmp-ssh-rdp --direction=INGRESS --priority=1000 --network=$CUSTOM_NETWORK --action=ALLOW --rules=tcp:22,tcp:3389,icmp --source-ranges=0.0.0.0/0

# List firewalls sorted by network
gcloud compute firewall-rules list --sort-by=NETWORK


# Create a cloud storage bucket
gsutil mb gs://$BUCKET_NAME

# Create vm using auto mode network
gcloud compute instances create $VM_AUTO_MODE --project=$PROJECT --zone=$ZONE_EU --machine-type=e2-micro --network-interface=network-tier=PREMIUM,subnet=$NETWORK_NAME --metadata=enable-oslogin=true --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=787554336250-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --create-disk=auto-delete=yes,boot=yes,device-name=my-eu-vm,image=projects/debian-cloud/global/images/debian-11-bullseye-v20221102,mode=rw,size=10,type=projects/qwiklabs-gcp-01-99a5c9390b5c/zones/us-west4-b/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any

# Create vm with custom firewall
gcloud compute instances create $CUSTOM_VM --project=$PROJECT --zone=$ZONE_US --machine-type=e2-micro --network-interface=network-tier=PREMIUM,subnet=managementsubnet-us --metadata=enable-oslogin=true --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=787554336250-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --create-disk=auto-delete=yes,boot=yes,device-name=managementnet-us-vm,image=projects/debian-cloud/global/images/debian-11-bullseye-v20221102,mode=rw,size=10,type=projects/qwiklabs-gcp-01-99a5c9390b5c/zones/us-west4-b/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any
