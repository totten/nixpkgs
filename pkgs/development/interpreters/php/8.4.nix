{ callPackage, ... }@_args:

let
  base = callPackage ./generic.nix (
    _args
    // {
### This works   
#      version = "8.4.26";
#      hash = "sha256-QglpTXsPY8RaN3PgfNwrv8cSSSZaXZUbH/U+EUftxco=";
### This fails test re: php-filter
      version = "8.4.27";
      hash = "sha256-slMKh3xyL0sIyeF0owywi6wrfhkD7m6eMV8KqfX4LCQ=";
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
