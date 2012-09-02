# gentoo-prefix-bootstrap

gentoo-prefix-bootstrap bootstraps Gentoo Prefix, 
with $EPREFIX being $(pwd)/eprefix. 

## Dependency

- perl and zsh to run the script. 
- devel tools to bootstrap Gentoo Prefix, such as gcc, make, and probably
  autotools. 
- lots of packages shown by ./emit-package-provided. 
  probably you can modify emit-package-provided to emit empty string, 
  if you don't want to depend on host packages. 

## How to run. 

    git clone https://github.com/tkztmk/gentoo-prefix-bootstrap.git
    cd gentoo-prefix-bootstrap
    # check if ./emit-package-provided runs correctly. 
    # if not, you probably have to install addtinal packages 
    # to your host system. 
    # or, you can replace emit-package-provided with just '#!/bin/sh', 
    # though it is not tested at all. 
    ./emit-package-provided
    # you probably want to set MAKEOPT to be -j4 or such. 
    vim emit-makeopt
    # now you can actually run the script. good luck. 
    ./bootstrap

## Tested Platforms

Currently, it is only known to work on CentOS 6.3. 

On Arch Linux, building gcc failed with 'LONG\_MIN undeclared'. 

Porting this script to Mac OSX is a large task. TODO. 

## License

gentoo-prefix-bootstrap is licensed under GPL v3. 
See COPYING.md for more details. 


