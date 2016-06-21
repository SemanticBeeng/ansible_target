export cwd=$(pwd)/config

docker run  -d -p 2222:22 \
    -v $cwd/ansible_id_rsa.pub:/home/ubuntu/.ssh/authorized_keys \
    synergo/ansible-target:0.1 


