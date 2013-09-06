name "virtualenv"
version "1.8.4"

dependencies ["python"]

source :url => "https://github.com/pypa/virtualenv/archive/1.8.4.zip",
       :md5 => "9855082cd75868356b713fa66793bdff"

relative_path "virtualenv-1.8.4"

build do
  command "#{install_dir}/embedded/bin/python ./virtualenv.py #{install_dir}"
end

