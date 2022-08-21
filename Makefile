AL=ansible-playbook -i localhost, -c local

macos:
	${AL} brew.yml
	${AL} clojure.yml
	${AL} emacs.yml
	${AL} git.yml
	${AL} rc.yml
	${AL} ssh.yml
	${AL} vim.yml
	${AL} zsh.yml

