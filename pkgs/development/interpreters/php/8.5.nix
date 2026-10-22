{ callPackage, fetchurl, ... }@_args:

let
  base = callPackage ./generic.nix (
    _args
    // {
      version = "8.5.12";
      phpSrc = fetchurl {
        url = "https://github.com/php/php-src/archive/refs/tags/php-8.5.12.tar.gz";
        hash = "sha256-kUcCWSyB+Fyz9sK8oMvkIX0/5fWkuMo0qPk/dKNXX8c=";
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
