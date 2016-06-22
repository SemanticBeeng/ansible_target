export cwd=$(pwd)/config

docker run -it \
    -h smalldatafierce-vm \
    -d -p 2222:22 \
    -v $cwd/ansible_id_rsa.pub:/home/ubuntu/.ssh/authorized_keys \
    -v $cwd/ansible_id_rsa.pub:/root/.ssh/authorized_keys \
    synergo/ansible-target:0.1 


