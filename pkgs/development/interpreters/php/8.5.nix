{ callPackage, fetchurl, ... }@_args:

let
  base = callPackage ./generic.nix (
    _args
    // {
      version = "8.5.4";
      phpSrc = fetchurl {
        url = "https://github.com/php/php-src/archive/refs/tags/php-8.5.4.tar.gz";
        hash = "sha256-BgPB/tuaZ+OErj8t6osWZnU8sGNktwxi2uKg/1n/o/I=";
      };
    }
  );
in
base.withExtensions (
  { all, ... }:
  with all;
  [
    bcmath
    calendar
    curl
    ctype
    dom
    exif
    fileinfo
    filter
    ftp
    gd
    gettext
    gmp
    iconv
    intl
    ldap
    mbstring
    mysqli
    mysqlnd
    opcache
    openssl
    pcntl
    pdo
    pdo_mysql
    pdo_odbc
    pdo_pgsql
    pdo_sqlite
    pgsql
    posix
    readline
    session
    simplexml
    sockets
    soap
    sodium
    sysvsem
    sqlite3
    tokenizer
    xmlreader
    xmlwriter
    zip
    zlib
  ]
)
