#cloud-config
users:
  - name: yc-user
    groups: sudo
    shell: /bin/bash
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    ssh-authorized-keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvXSVuGK2sZvQ9BgBvADHILFpZov7/8VDtIqyGtI4x9e4OprK5hpHaJOKovy22wYmgRxd6i2suCk3mTUqmJyWh7rgP91fwmL3Q15qoOFEsvrsbuLO3D2bwj/eTVbP6Y1ADwjJoTs7KvUZGKH3ZRaNxlyLHkDdNHgYs9tijOucbdZn4FBcP3kou9j/Tuh1ejYcgJgRtaLpjHIp3aAIHI2JoBNMTbJ09weoZsIGb1AP6KMWyznXqu+XwYc7DdqfH1vBNKpDiNHzbzEHBEJ6TUMFC/HAiuHwxBgHyj0ML5HHwmrW7YRHrJVCRd/5POvKTxfWGfEd3HzmQH22T4fspb4U7Qd2X1zamXqKFOABql0Oi9N/yDdJcYieyJaUrpkbFtQLqjwz9gM8lUuha41k00BQk6TGMpIhKmigB/1fOumuRxwBxo6Cpfmwav5tENJxCPBFzqf+eTulMMjyINy4B2BScjz87wwaQryaySBYdqjKVEn/6mwI8qjyiGhyS6QqY89M= appuser
runcmd:
  - wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
  - echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
  - apt update -y
  - apt install -y apt-transport-https ca-certificates ruby-full ruby-bundler build-essential mongodb-org git
  - systemctl start mongod
  - systemctl enable mongod
  - cd /home/yc-user && git clone -b monolith https://github.com/express42/reddit.git
  - cd /home/yc-user/reddit && bundle install
  - puma -d