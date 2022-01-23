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

## ДЗ Packer
- Установлен и сконфигурирован Packer на локальной машине
- Создан и настроен сервисный аккаунт
- Создан и настроен шаблон Packer
- Создана ВМ из образа Packer
- Шаблон Packer параметризирован необходимыми параметрами, вымышленные параметры указаны в variables.json.example
- В .gitignore добавлен файл variables.json


## ДЗ Знакомство с Terraform

- Установил на локальный хост terraform 
- В директории terraform создал main.tf, в котором описал конфигурацию создания ВМ на основе образа packer из  предыдущего ДЗ
- Создал файл outputs.tf. Теперь можно смотреть значения различных параметров через команду terraform output
- В main.tf добавил провиженеры для добавления файлов с локального хоста на удаленную ВМ
- Параметризировал main.tf, создав variables.tf и terraform.tfvars
- добавлена возможность масштабирования и подключение к балансировщику
