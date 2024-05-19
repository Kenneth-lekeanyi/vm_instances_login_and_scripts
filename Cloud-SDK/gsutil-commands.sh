# This command authenticate you from your SDK (V.S CODE) to intaract with your console. If you log off and your session expires, use this command to login again.
gcloud auth login

# This command helps to copy objects from local to gcs bucket
gsutil cp *.txt gs://my-bucket
# This is the edited command to suit our construct
gsutil cp file1.txt gs://cloudsdk-bucket-kl

#This command copy a File or an object from one Bucket to another Bucket
gsutil cp gs://cloudsdk-bucket-kl/file1.txt gs://source-bucket-kl

# this command download from a Bucket to your local.
gsutil cp gs://my-bucket/*.txt

# In the same command, -n is used to prevent overwritten of any existing file.
gsutil cp -n gs://my-bucket/*.txt

# This command creates a bucket
 gsutil mb gs://cloudsdk-bucket-kl

 # This command remo



 
## To update the gcloud
gcloud components update

## this command creates a new project
gcloud projects create PROJECT_ID

## this command sets a specific project
gcloud config set project PROJECT_ID

## this command creates a bucket when a project is set
gsutil mb gs://cloudsdk-bucket-pe

# This gcloud command creates 2 bucket just as the command in gsutil
gcloud storage buckets create gs://my-bucket1 gs://my-bucket2

# This command creates a Bucket and defines its storage class and its location.
gcloud storage buckets create gs://my-bucket --default-storage-class=nearline --location=asia


# This command removes an object from a GCS Bucket (wherein, name of the Bucket is "bucket1" and name of the file is "kitten png")
gsutil rm gs://bucket1/kitten png  
gsutil rm gs://source-bucket-kl/file1.txt

# Use options to create a Bucket, define it storage class and define its region to be us-east1
gsutil mb -c nearline -l us-east1 gs://development-bucket-kl



# Use a single gcloud command to create multiple Buckets
gcloud storage buckets create gs://my-bucket gs://my-other bucket

# Adding more options in the command to introduce more features
gcloud storage bucket create gs://my-bucket --default-storage-class = nearline --location = asia

## this command to set to a particular project
gcloud config set project PROJECT_ID

## this command will list all project
gcloud projects list

## this command will list the current project you are in
gcloud config list

## Command to create a bucket
gsutil mb -p projectid -c storageclass -l region gs://unique-bucket-name/ 

## Command to delete a project
gcloud projects delete PROJECT_ID

# For pre-sign url, use this command
gsutil signurl -d 10m <private-key-file> gs://<bucket>/<object>
gsutil signurl -d 3h privatekey.json gs://my-bucket/path of the file

# This command creates a simple custom vpc
gcloud compute networks create network-name

# This command creates a Custom Vpc with 3 Subnets (being for Test, Dev and Prod Environment) without any Firewall Rules
gcloud compute networks create custom-vpc --project=hardy-position-404322 --description=This\ is\ the\ custom\ created\ vpc\ network\ for\ Test,\ Dev\ and\ Prod\ Environments --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional

# This command creates a Custom Vpc with 3 Subnets (being for Test, Dev and Prod Environment) with all 4 IPV4 FIREWALL Rules attached to it
gcloud compute networks create custom-vpc --project=hardy-position-404322 --description=This\ is\ the\ custom\ created\ vpc\ network\ for\ Test,\ Dev\ and\ Prod\ Environments --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional && gcloud compute networks subnets create dev-subnet --project=hardy-position-404322 --description=dev-subnet\ is\ to\ be\ used\ for\ any\ development\ work --range=10.0.0.0/24 --stack-type=IPV4_ONLY --network=custom-vpc --region=northamerica-northeast2 --enable-flow-logs --logging-aggregation-interval=interval-5-sec --logging-flow-sampling=0.5 --logging-metadata=include-all && gcloud compute networks subnets create test-subnet --project=hardy-position-404322 --description=test-subnet\ is\ for\ the\ Test\ Environment --range=10.1.0.0/24 --stack-type=IPV4_ONLY --network=custom-vpc --region=northamerica-northeast2 --enable-flow-logs --logging-aggregation-interval=interval-5-sec --logging-flow-sampling=0.5 --logging-metadata=include-all && gcloud compute networks subnets create prod-subnet --project=hardy-position-404322 --description=prod-subnet\ is\ meant\ specifically\ for\ the\ Production\ Environment --range=10.2.0.0/24 --stack-type=IPV4_ONLY --network=custom-vpc --region=northamerica-northeast2 --enable-flow-logs --logging-aggregation-interval=interval-5-sec --logging-flow-sampling=0.5 --logging-metadata=include-all && gcloud compute firewall-rules create custom-vpc-allow-custom --project=hardy-position-404322 --network=projects/hardy-position-404322/global/networks/custom-vpc --description=Allows\ connection\ from\ any\ source\ to\ any\ instance\ on\ the\ network\ using\ custom\ protocols. --direction=INGRESS --priority=65534 --source-ranges=10.0.0.0/24,10.1.0.0/24,10.2.0.0/24 --action=ALLOW --rules=all && gcloud compute firewall-rules create custom-vpc-allow-icmp --project=hardy-position-404322 --network=projects/hardy-position-404322/global/networks/custom-vpc --description=Allows\ ICMP\ connections\ from\ any\ source\ to\ any\ instance\ on\ the\ network. --direction=INGRESS --priority=65534 --source-ranges=0.0.0.0/0 --action=ALLOW --rules=icmp && gcloud compute firewall-rules create custom-vpc-allow-rdp --project=hardy-position-404322 --network=projects/hardy-position-404322/global/networks/custom-vpc --description=Allows\ RDP\ connections\ from\ any\ source\ to\ any\ instance\ on\ the\ network\ using\ port\ 3389. --direction=INGRESS --priority=65534 --source-ranges=0.0.0.0/0 --action=ALLOW --rules=tcp:3389 && gcloud compute firewall-rules create custom-vpc-allow-ssh --project=hardy-position-404322 --network=projects/hardy-position-404322/global/networks/custom-vpc --description=Allows\ TCP\ connections\ from\ any\ source\ to\ any\ instance\ on\ the\ network\ using\ port\ 22. --direction=INGRESS --priority=65534 --source-ranges=0.0.0.0/0 --action=ALLOW --rules=tcp:22


# to generate the ssh key. Use this command
ssh-keygen -t rsa

# Use this command to attribute permissions to the vm
chmod 400 ~/.ssh/id_rsa

# this is the command to login to the vm instance
ssh -i ~/.ssh/id_rsa USER_NAME@VM_EXTERNAL_IP

# edit the command
ssh -i ~/.ssh/id_rsa lekeanyi@34.68.91.78
