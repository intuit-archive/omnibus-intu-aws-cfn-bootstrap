name "gdbm"
version "1.9.1"

dependency "libgcc"

source :url => "http://ftp.gnu.org/gnu/gdbm/gdbm-1.9.1.tar.gz",
       :md5 => "59f6e4c4193cb875964ffbe8aa384b58"

relative_path "gdbm-1.9.1"

build do
  configure_command = ["./configure",
                       "--enable-libgdbm-compat",
                       "--prefix=#{install_dir}/embedded"]

  if platform == "freebsd"
    configure_command << "--with-pic"
  end

  command configure_command.join(" ")
  command "make -j #{max_build_jobs}"
  command "make install"
end
