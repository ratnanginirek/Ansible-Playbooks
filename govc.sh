     #!/bin/bash/
     curl -L https://github.com/vmware/govmomi/releases/download/v0.16.0/govc_linux_amd64.gz | gunzip > /usr/local/bin/govc
     #gunzip govc_linux_amd64.gz && mv govc_linux_amd64 /usr/local/bin/govc && chmod 755 /usr/local/bin/govc
     chmod +x /usr/local/bin/govc
     echo -e "\nThe version of govc is"
     govc version

     export GOVC_INSECURE=1
     export GOVC_URL = x.x.x.x
     export GOVC_USERNAME="*****"
     export GOVC_PASSWORD="*****"
     export GOVC_DATASTORE="*****"
     export GOVC_NETWORK=SW_Build_198
     export GOVC_RESOURCE_POOL=*/Resources/*
     export GOVC_DATACENTRE=Infrastructure
     export GOVC_CLUSTER=SW-Build
     
     curl -O http://artifactory.mpe.lab.vce.com:8080/artifactory/concourse-demo/vra-ova.json
     govc import.ova -options=vra-ova.json http://artifactory.mpe.lab.vce.com:8080/artifactory/concourse-demo/VMware-vRO-Appliance-7.3.0.21553-5521409_OVF10.ova
     echo "\n\nDeployment Complete. All Done!"
