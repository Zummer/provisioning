site-v:
	ansible-playbook -i hosts.yml tasks/site.yml -v

site:
	ansible-playbook -i hosts.yml tasks/site.yml

jenkins-manager:
	ansible-playbook -i hosts.yml tasks/jenkins-manager.yml

jenkins-agent:
	ansible-playbook -i hosts.yml tasks/jenkins-agent.yml

upgrade:
	ansible-playbook -i hosts.yml tasks/upgrade.yml

renew-certificates:
	ansible-playbook -i hosts.yml tasks/renew-certificates.yml

authorize:
	ansible-playbook -i hosts.yml tasks/authorize.yml

generate-agent-key:
	ssh-keygen -q -t rsa -N '' -f files/agent_rsa

authorize-jenkins-agent:
	ansible-playbook -i hosts.yml tasks/authorize-jenkins-agent.yml

docker-login:
	ansible-playbook -i hosts.yml tasks/docker-login.yml

ping:
	ansible all -m ping -i hosts.yml

show-initial-password-jenkins:
	ansible -i hosts.yml manager -m shell -a 'cd /home/deploy/jenkins && docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword'