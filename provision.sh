apt-get install -y erlang-nox
dpkg -i /home/vagrant/shared/packages/rabbitmq-server_3.1.5-1_all.deb

rabbitmq-plugins enable rabbitmq_management
rabbitmq-plugins enable rabbitmq_management_visualiser

wget http://hg.rabbitmq.com/rabbitmq-management/raw-file/rabbitmq_v3_1_5/bin/rabbitmqadmin -o /usr/local/bin/rabbitmqadmin
python rabbitmqadmin --bash-completion > /etc/bash_completion.d/rabbitmqadmin
rabbitmqctl stop_app && rabbitmqctl start_app