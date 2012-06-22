# <a name="title"></a> icinga-cookbook [![Build Status](https://secure.travis-ci.org/mdxp/icinga-cookbook.png)](http://travis-ci.org/mdxp/icinga-cookbook)

DESCRIPTION:
===========

REQUIREMENTS:
===========

ATTRIBUTES:
===========

USAGE:
======

Some caveats at the moment:

Minimum requirements for users databag format:

Users
-id
--groups
---sysadmin
--htaccess // in order to have access to site through webui
--icinga
---email // this key must exist for each user with a sysadmin group value (above)

Note: the htpasswd value must be generated with: `htpasswd -nb <username> <password>`

Also, you will need one node with a "monitoring" role (I applying it to my icinga node,
and this can be just a skeleton. This is just so that one of the templates generates correctly,
and this requirement will likely be alleviated in future versions.
