# heroku-mysql-cli

[![Build Status](https://secure.travis-ci.org/Shopify/heroku-buildpack-mysql.png)](http://travis-ci.org/Shopify/heroku-buildpack-mysql)

This is a [Heroku buildpack](https://devcenter.heroku.com/articles/buildpacks) that installs and adds just the `mysql` binary (v5.7) from the `mysql-client-core` deb package, which will be available in `$PATH` on your Dyno.

> **Note:** if you are interested in `mysqldump` binary check out `https://github.com/Everlane/heroku-buildpack-mysql`

## Version

* MySQL: `5.7`

> **Note:** tested compatiblity with `heroku-18` stack, it might have issues with different versions

## Usage

- via heroku cli:
   ```
   $ heroku buildpacks:add https://github.com/stebogit/heroku-mysql-cli
   $ git push heroku master
   ```

- or from the dashboard of your project

  ![Screen Shot 2020-09-08 at 1 46 08 PM](https://user-images.githubusercontent.com/12717225/92526279-0b1f8100-f1da-11ea-9322-a472b2034316.png)


---

```
-----> MySQL Client app detected
-----> Downloading MySQL Client package
       Looking for clients at: http://security.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/
       available clients:
       mysql-client-core-5.7_5.7.31-0ubuntu0.18.04.1_amd64.deb
       Selecting: mysql-client-core-5.7_5.7.31-0ubuntu0.18.04.1_amd64.deb
-----> Installing MySQL Client
       dpkg -x /tmp/codon/tmp/cache/mysql-client-core.deb /tmp/build_5b3d30d0_/tmp/mysql-client-core
-----> Cleaning up
```

### Credits

I basically registered [`thoughtbot`](https://github.com/thoughtbot/heroku-buildpack-mysql)'s buildpackage to [Heroku](https://elements.heroku.com/buildpacks) and updated the docs
