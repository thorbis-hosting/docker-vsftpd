Docker vsftpd
============

A docker container for vsftpd

Installation
------------
```
docker build -t docker-vsftpd .
```

Usage
-----
```
docker run -p 20:20 -p 21:21 -p 22:22 docker-vsftpd
```

License
-------
[GPLv3][gpl3.0]

[gpl3.0]: https://www.gnu.org/licenses/gpl-3.0.txt

Contributing
------------
Please follow the [Open Code of Conduct][code-of-conduct].

[code-of-conduct]: http://todogroup.org/opencodeofconduct

To make sure your pull request will be accepted, please open an issue in the issue tracker before starting work where we can talk with you to make sure a feature or bug fix is going in a direction where it will benifit everybody.
