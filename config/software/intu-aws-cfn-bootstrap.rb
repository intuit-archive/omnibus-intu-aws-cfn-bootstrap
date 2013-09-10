name "intu-aws-cfn-bootstrap"
version ENV['version']

dependencies ["openssl", "python", "virtualenv"]

build do
  command "if rpm -qa|grep aws-cfn-bootstrap;then rpm -e --quiet `rpm -qa --queryformat '%{name}\n'|grep aws-cfn-bootstrap`;fi"
  cmd =  "source #{install_dir}/bin/activate;"
  cmd << "easy_install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz"
  command cmd
end
