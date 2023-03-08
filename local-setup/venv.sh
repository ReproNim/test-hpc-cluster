	python3 -m venv .phpc
	. .phpc/bin/activate
	which pip3
	pip3 install -r requirements.txt
	ansible-galaxy collection install -r collections.yml
