name "intu-aws-cfn-bootstrap"
version ENV['version']

dependency "openssl"
dependency "python"
dependency "virtualenv"

pip_install_list = ["/tmp/aws-cfn-bootstrap-latest.tar.gz"]

build do
  pip_install_list.each do |p|
    command ". #{install_dir}/bin/activate; pip install -v --install-option='--prefix=#{install_dir}' #{p}"
  end
end
