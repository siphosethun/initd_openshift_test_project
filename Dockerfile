FROM nginx:alpine
MAINTAINER support@initd.it.co.za

RUN yum -y update
RUN yum install –y nginx 
COPY . /usr/share/nginx/html
CMD [“echo”,”Image created”] 

EXPOSE 8083

vi start_nfs.sh
#!/bin/bash

# Define the name of the NFS server service
NFS_SERVICE="nfs-server"

# Check if the NFS service is running
if systemctl is-active --quiet $NFS_SERVICE; then
  echo "NFS server is already running."
else
  # Start the NFS server service
  systemctl start $NFS_SERVICE

  # Check if the service started successfully
  if systemctl is-active --quiet $NFS_SERVICE; then
    echo "NFS server started successfully."
  else
    echo "Failed to start NFS server."
  fi
fi

chmod +x start_nfs.sh

*/5 * * * * /home/YOU/start_nfs.sh


#!/bin/bash

# Define NFS server and path
NFS_SERVER="nfs-server-ip-or-hostname"
NFS_PATH="/path/to/nfs/share"

# Mount the NFS share
mount -t nfs $NFS_SERVER:$NFS_PATH /mnt/nfs

# Check if the mount was successful
if [ $? -eq 0 ]; then
  echo "NFS share mounted successfully."
  
  # Start your service here
  # For example, replace 'your-service' with the actual service you want to start.
  systemctl start your-service
  
  # Check if the service started successfully
  if systemctl is-active --quiet your-service; then
    echo "Service started successfully."
  else
    echo "Failed to start the service."
  fi
else
  echo "Failed to mount NFS share."
fi





















