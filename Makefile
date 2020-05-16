site-v:
	ansible-playbook -i hosts.yml tasks/site.yml -vvvv

site:
	ansible-playbook -i hosts.yml tasks/site.yml

upgrade:
	ansible-playbook -i hosts.yml tasks/upgrade.yml

renew-certificates:
	ansible-playbook -i hosts.yml tasks/renew-certificates.yml

authorize:
	ansible-playbook -i hosts.yml tasks/authorize.yml

docker-login:
	ansible-playbook -i hosts.yml tasks/docker-login.yml

ping:
	ansible all -m ping -i hosts.yml
