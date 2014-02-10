name "intu-aws-cfn-bootstrap"
version ENV['version']

dependencies ["openssl", "python", "virtualenv"]

build do
  command ". #{install_dir}/bin/activate; pip install -v --install-option='--prefix=#{install_dir}' requests==2.2.1"
  command ". #{install_dir}/bin/activate; pip install -v --install-option='--prefix=#{install_dir}' python-daemon==1.6"
  command ". #{install_dir}/bin/activate; pip install -v --install-option='--prefix=#{install_dir}' https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz"
end
