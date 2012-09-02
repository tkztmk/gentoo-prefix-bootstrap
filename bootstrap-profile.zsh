
_root_dir=$(pwd)
export EPREFIX=$_root_dir/eprefix
export PATH="$EPREFIX/usr/bin:${EPREFIX}/bin:${EPREFIX}/tmp/usr/bin:${EPREFIX}/tmp/bin:/usr/bin:/bin:${PATH}"

eval "$($_root_dir/emit-make-conf)"

