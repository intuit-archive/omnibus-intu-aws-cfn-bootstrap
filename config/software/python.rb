name "python"
version "2.7.3"

source :url => "http://python.org/ftp/python/2.7.3/Python-2.7.3.tgz",
       :md5 => "2cf641732ac23b18d139be077bd906cd"

relative_path "Python-2.7.3"

env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib"
}

build do
  command(["./configure",
           "--prefix=#{install_dir}/embedded"].join(" "),
          :env => env)

  command "make -j #{max_build_jobs}", :env => {"LD_RUN_PATH" => "#{install_dir}/embedded/lib"}
  command "make install"
end
