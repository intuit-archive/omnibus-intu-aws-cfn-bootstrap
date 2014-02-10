name "intu-aws-cfn-bootstrap"
version ENV['version']

dependencies ["openssl", "python", "virtualenv"]

build do
  command "if rpm -qa|grep aws-cfn-bootstrap;then rpm -e --quiet `rpm -qa --queryformat '%{name}\n'|grep aws-cfn-bootstrap`;fi"
  cmd =  "source #{install_dir}/bin/activate;"
  cmd << "easy_install requests"
  cmd << "easy_install python-daemon"
  cmd << "wget https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz"
  cmd << "tar xzvf aws-cfn-bootstrap-latest.tar.gz"
  cmd << "cd aws-cfn-bootstrap-1.3"
  cmd << "python build setup.py"
  cmd << "python install setup.py" 
  command cmd
end
