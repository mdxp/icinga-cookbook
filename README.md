# <a name="title"></a> icinga-cookbook [![Build Status](https://secure.travis-ci.org/mdxp/icinga-cookbook.png)](http://travis-ci.org/mdxp/icinga-cookbook)

DESCRIPTION:
===========

Installs and configures Icinga server.

REQUIREMENTS:
===========

Cookbooks
---------

* apache2 
* build-essential 

ATTRIBUTES:
===========

See `attributes/default.rb`

Data Bags
=========

Minimum requirements for users databag format:

Users
-----

Create a `users` data bag that will contain the users that will be able to log into the Icinga webui. Each user can use htauth with a specified password. Users that should be able to log in should be in the sysadmin group. Example user data bag item:

```bash   
{
  "id": "icinga",
  "groups": "sysadmin",
  "htpasswd": "hashed_htpassword",
  "icinga": {
    "icinga_email": "icinga@example.com"
  }
}
```

* `email`    - This key must exist for each user with a sysadmin group value
* `htpasswd` - Used to have access

The htpasswd must be the hashed value. Get this value with htpasswd:

```bash
  % htpasswd -n -s icinga
  New password:
  Re-type new password:
  icinga:{SHA}8XLF6eTYQKVTVogqK2RIRrMCshY=
```

For example use the `{SHA}8XLF6eTYQKVTVogqK2RIRrMCshY=` value in the data bag.

USAGE:
======

Also, you will need one node with a "monitoring" role (I applying it to my icinga node,
and this can be just a skeleton. This is just so that one of the templates generates correctly,
and this requirement will likely be alleviated in future versions.)

Monitoring Role
---------------
Create a role to use for the monitoring server. The role name should match the value of the attribute "`node['icinga']['server_role']`". For example:

```bash
  % cat roles/monitoring.rb
  name "monitoring"
  description "Monitoring server"
  run_list(
    "recipe[icinga::server]"
  )


  % knife role from file monitoring.rb
```


