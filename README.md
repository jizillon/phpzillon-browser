# PHP Content Repository Browser

# NOTE: Obsolete

There is a better browser available at https://github.com/marmelab/phpcr-browser
See also https://github.com/symfony-cmf/symfony-cmf/wiki/PHPCR-repository-admin for other alternatives.

## Requirements

* [XSL PHP Extension](http://php.net/manual/en/book.xsl.php)

## Installation
* clone repo
* bash install_vendors.sh
* add a virtual host to your apache like

## Configuration
To change the default configuration either adjust the file `conf/config.d/00-default.yml` or create a new config for your workspace based on `conf/config.d/10-example.yml-dist`. When using a custom configuration the environment variable `OKAPI_ENV` needs to match the name given in the configuration. With Apache this is done using `SetEnv OKAPI_ENV example` in the virtual host context.

```
<VirtualHost *:80>
  DocumentRoot /opt/git/phpcrbrowser/www
  ServerName phpcr.lo
</VirtualHost>
```

* add an /etc/hosts entry for phpcr.lo
* start jackrabbit
* call http://phpcr.lo/

