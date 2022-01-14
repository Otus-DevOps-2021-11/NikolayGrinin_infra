# NikolayGrinin_infra
NikolayGrinin Infra repository

# Connection settings
bastion_IP = 62.84.112.85
someinternalhost_IP = 10.128.0.20

# cloud-testapp
testapp_IP = 51.250.12.55
testapp_port = 9292

# Startup script
yc compute instance create --name reddit-app --hostname reddit-app --memory=4 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 --zone=ru-central1-a --metadata serial-port-enable=1 --metadata-from-file user-data=startup_config.yml


