name "db4"
version "4.7.25"

source :url => "http://download.oracle.com/berkeley-db/db-4.7.25.tar.gz",
       :md5 => "ec2b87e833779681a0c3a814aa71359e"

relative_path "db4-4.7.25"

build do
  command "../dist/configure --enable-compat185 --enable-rpc --prefix=#{install_dir}/embedded", :cwd => "/var/cache/omnibus/src/db-4.7.25/build_unix"
  command "make", :cwd => "/var/cache/omnibus/src/db-4.7.25/build_unix"
  command "make install", :cwd => "/var/cache/omnibus/src/db-4.7.25/build_unix"
end
