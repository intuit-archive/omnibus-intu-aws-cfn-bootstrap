name "intu-aws-cfn-bootstrap"
version ENV['version']

dependencies ["openssl", "python", "virtualenv"]

pip_install_list = ["requests==2.2.1", "python-daemon==1.6", "https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz"]

build do
  pip_install_list.each do |p|
    command ". #{install_dir}/bin/activate; pip install -v --install-option='--prefix=#{install_dir}' #{p}"
  end
end
