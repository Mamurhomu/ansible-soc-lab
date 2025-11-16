.PHONY: help status health network docker clean

help:
	@echo "🛡️ SOC Lab Ansible Commands"
	@echo "============================"
	@echo "make status    - Quick SOC status"
	@echo "make health    - Detailed health check"
	@echo "make network   - Show network diagram"
	@echo "make docker    - Check Docker status"
	@echo "make ping      - Test connectivity"
	@echo "make disk      - Check disk usage"
	@echo "make clean     - Remove Ansible cache"

status:
	ansible-playbook playbooks/soc_correct_architecture.yml -K

health:
	ansible-playbook playbooks/soc_complete_monitor.yml -K

network:
	ansible-playbook playbooks/soc_network_flow.yml

docker:
	ansible docker_hosts -m shell -a "docker ps" -K

ping:
	ansible security_tools -m ping -K

disk:
	ansible security_tools -m shell -a "df -h /" -K

clean:
	rm -rf ~/.ansible/cp
	find . -name "*.retry" -delete
