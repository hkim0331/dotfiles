AL=ansible-playbook -i localhost, -c local

macos:
	${AL} brew.yml
	${AL} emacs.yml
	${AL} git.yml
	${AL} ssh.yml
	${AL} zsh.yml

