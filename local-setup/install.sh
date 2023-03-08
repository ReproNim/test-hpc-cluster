source local-setup/env.sh
pip3 install --upgrade pip
pip3 install -r local-setup/requirements.txt
ansible-galaxy collection install -r local-setup/collections.yml
