name "intu-aws-cfn-bootstrap"
version ENV['version']

dependencies ["openssl", "python", "virtualenv"]

build do
  command "if rpm -qa|grep aws-cfn-bootstrap;then rpm -e --quiet `rpm -qa --queryformat '%{name}\n'|grep aws-cfn-bootstrap`;fi"
  command "source #{install_dir}/bin/activate"
  command "easy_install requests"
  command "easy_install python-daemon"
  command "easy_install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz"
end
