{ callPackage, fetchurl, ... }@_args:

let
  base = (
    callPackage ./generic.nix (
      _args
      // {
        version = "8.4.6";
        phpSrc = fetchurl {
          url = "https://www.php.net/distributions/php-8.4.6.tar.xz";
          hash = "sha256-CJsIpe/vAjE0gzJfO6zYxP4xHPHh5WdJ1cx9BZ4iVjE=";
        };
      }
    )
  );
in
base.withExtensions (
  { all, ... }:
  with all;
  ([
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
    # soap
    sodium
    sysvsem
    sqlite3
    tokenizer
    xmlreader
    xmlwriter
    zip
    zlib
  ])
)
