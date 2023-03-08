install:
	./local-setup/install.sh

.PHONY: all test clean
slurm-up:
	source local-setup/env.sh; podman-compose -f slurm/podman-compose.yml up

.PHONY: all test clean
slurm-down:
	source local-setup/env.sh; podman-compose -f slurm/podman-compose.yml down

.PHONY:
discovery-up:
	ansible-playbook dartmouth-discovery.yml -e state=started

.PHONY:
discovery-down:
	ansible-playbook dartmouth-discovery.yml -e state=absent

.PHONY:
again: discovery-down discovery-up
	echo "AGAIN!"
