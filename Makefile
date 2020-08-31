site-v:
	ansible-playbook -i hosts.yml site.yml -v

site:
	ansible-playbook -i hosts.yml site.yml

registry:
	ansible-playbook -i hosts.yml registry.yml

jenkins-manager:
	ansible-playbook -i hosts.yml jenkins-manager.yml

jenkins-agent:
	ansible-playbook -i hosts.yml jenkins-agent.yml

upgrade:
	ansible-playbook -i hosts.yml upgrade.yml

renew-certificates:
	ansible-playbook -i hosts.yml renew-certificates.yml

authorize:
	ansible-playbook -i hosts.yml authorize.yml

generate-agent-key:
	ssh-keygen -q -t rsa -N '' -f files/agent_rsa

authorize-jenkins-agent:
	ansible-playbook -i hosts.yml authorize-jenkins-agent.yml

generate-deploy-key:
	ssh-keygen -q -t rsa -N '' -f files/deploy_rsa

authorize-deploy:
	ansible-playbook -i hosts.yml authorize-deploy.yml

docker-login:
	ansible-playbook -i hosts.yml docker-login.yml

ping:
	ansible all -m ping -i hosts.yml

show-initial-password-jenkins:
	ansible -i hosts.yml manager -m shell -a 'cd /home/deploy/jenkins && docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword'