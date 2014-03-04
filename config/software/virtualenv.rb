name "virtualenv"
version "1.11.4"

dependencies ["python"]

source :url => "https://github.com/pypa/virtualenv/archive/1.11.4.zip",
       :md5 => "084620d58dfe0635704d5df4ed1f04c0"

relative_path "virtualenv-1.11.4"

build do
  command "#{install_dir}/embedded/bin/python ./virtualenv.py #{install_dir}"
end

