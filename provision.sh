if !(grep www.rabbitmq.com /etc/apt/sources.list) then
	sh -c 'echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list'
	wget -qO - http://www.rabbitmq.com/rabbitmq-signing-key-public.asc | sudo apt-key add -
	apt-get update > /dev/null
	apt-get install -y rabbitmq-server
	# install admin plugin
	./provision/rabbitmq/plugins/enable.sh
	# install python API
	wget http://hg.rabbitmq.com/rabbitmq-management/raw-file/rabbitmq_v3_1_5/bin/rabbitmqadmin -o /usr/local/bin/rabbitmqadmin
	# autocomplete commands available on bash
	python rabbitmqadmin --bash-completion > /etc/bash_completion.d/rabbitmqadmin
	service rabbitmq-server restart
fi