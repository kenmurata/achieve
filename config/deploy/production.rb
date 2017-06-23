server '52.69.133.208', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/home/ubuntu/workspace/memo_and_back/aws_ssh_key'