# To generate ssh public and private keys, use this command
ssh-keygen -t rsa

# To just get the public key from your current working position, just just this command
cat ~/.ssh/id_rsa.pub

# Use this command to attribute permissions to the vm (we change the permission because those permissions that comes with the key are so permissive or wide, and thus we need to narrow it down 
# that is the reason why we use the chmod 400 to norrow the permission down befor giving it to the user. We run this command just once. unless you generate another key)
chmod 400 ~/.ssh/id_rsa

# this is the command to login to the vm instance
ssh -i ~/.ssh/id_rsa USER_NAME@VM_EXTERNAL_IP

# edit the command
ssh -i ~/.ssh/id_rsa lekeanyi@34.124.121.178

# If you encounter the issue of WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!... Host key verification failed. do this:
# Either you rename the known_hosts file like this;
mv known_hosts known_hosts_bkp 
# then run the ssh command again, OR
# Remove the file completely using this command
rm known_hosts*
# thn you run the ssh command again to login to the VM Instance

# yum = CentOs, Rhel
# apt or apt-get = Debian, Ubuntu

# compute.organizations.enableXpnHost this is for CentOS 
#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
yum install wget
wget https://github.com/awanmbandi/aws-real-world-projects/raw/web-appplications-src-code/medlife-health-care.zip -P ~/
yum install unzip -y
unzip ~/medlife-health-care.zip
rm -f /var/www/html/index.html
cp -rf medlife-master/* /var/www/html/


# compute.organizations.enableXpnHost this is for Ubuntu
#! /bin/bash 
sudo apt update -y 
sudo apt -y install apache2 
sudo systemctl start apache2 
sudo systemctl enable apache2 
sudo apt install wget -y 
sudo wget https://github.com/awanmbandi/google-cloud-projects/raw/jjtech-flix-app/jjtech-streaming-application-v1.zip 
sudo apt install unzip -y 
sudo unzip jjtech-streaming-application-v1.zip 
sudo rm -f /var/www/html/index.html 
sudo cp -rf jjtech-streaming-application-v1/* /var/www/html/ 

# This is the Medilife Application script for ubuntu instance snapshoting Hands-on
#!/bin/bash
sudo apt update -y 
sudo apt -y install apache2 
sudo systemctl start apache2 
sudo systemctl enable apache2 
sudo apt install wget -y 
sudo wget https://github.com/awanmbandi/aws-real-world-projects/raw/web-appplications-src-code/medlife-health-care.zip -P ~/
sudo apt install unzip -y 
sudo unzip ~/medlife-health-care.zip
sudo rm -f /var/www/html/index.html
sudo cp -rf medlife-master/* /var/www/html/

#!/bin/bash
sudo apt update -y 
sudo apt -y install apache2 
sudo systemctl start apache2 
sudo systemctl enable apache2 
sudo apt install wget -y 
sudo wget https://github.com/awanmbandi/aws-real-world-projects/raw/web-appplications-src-code/medlife-health-care.zip -P ~/
sudo apt install unzip -y 
sudo unzip ~/medlife-health-care.zip
sudo rm -f /var/www/html/index.html
sudo cp -rf medlife-master/* /var/www/html/



#  command to inject unusual traffic to a VM using “Stress”
sudo apt-get install stress-ng
stress-ng --cpu 4 --timeout 600s

# An OS policy to install a Windows MSI downloaded from a Google Cloud Storage bucket.
id: install-msi-policy
mode: ENFORCEMENT
resourceGroups:
  - resources:
      - id: install-msi
        pkg:
          desiredState: INSTALLED
          msi:
            source:
              gcs:
                bucket: my-bucket
                object: my-app.msi
                generation: 1619136883923956



# An OS policy assignment to install a Windows MSI downloaded from a Google Cloud Storage bucket
# on all VMs running Windows Server OS.
osPolicies:
  - id: install-msi-policy
    mode: ENFORCEMENT
    resourceGroups:
      - resources:
          - id: install-msi
            pkg:
              desiredState: INSTALLED
              msi:
                source:
                  gcs:
                    bucket: my-bucket
                    object: my-app.msi
                    generation: 1619136883923956
instanceFilter:
  inventories:
    - osShortName: windows
rollout:
  disruptionBudget:
    fixed: 10
  minWaitDuration: 300s

  # use this link to see most of those OS Policies
  https://github.com/GoogleCloudPlatform/osconfig/tree/master/examples/OSPolicyAssignments/console

https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies#example-4


# jjtech flix application script
#! /bin/bash 
sudo apt update -y 
sudo apt -y install apache2 
sudo systemctl start apache2 
sudo systemctl enable apache2 
sudo apt install wget -y 
sudo wget https://github.com/awanmbandi/google-cloud-projects/raw/jjtech-flix-app/jjtech-streaming-application-v1.zip 
sudo apt install unzip -y 
sudo unzip jjtech-streaming-application-v1.zip 
sudo rm -f /var/www/html/index.html 
sudo cp -rf jjtech-streaming-application-v1/* /var/www/html/

