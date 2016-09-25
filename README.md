# easydns-restapi-cli

A command-line tool for managing (create/update) EasyDNS DNS records using easyDNS rest API.

```
❯❯❯ python easydns-restapi-cli.py --help                   
Usage: easydns-restapi-cli.py [options]

Options:
  --version             show program's version number and exit
  -h, --help            show this help message and exit
  -f CONF, --file=CONF  configuration file containing easyDNS API details
  -c, --create          create new record
  -u, --update          update existing record to new IP address
  -H HOSTNAME, --hostname=HOSTNAME
                        specify short hostname without domain name part. e.g:
                        www for www.example.com
  -a IPADDR, --address=IPADDR
                        specify IP address for the hostname
```

### INSTALLATION
```
❯❯❯ pip install requests
❯❯❯ curl -sO https://github.com/tuladhar/easydns-restapi-cli/blob/master/easydns-restapi-cli.py
❯❯❯ install -m 755 easydns-restapi-cli.py /usr/local/bin
```

### CONFIGURATION
```
{
	"domain": "XYZ",
	"token": "XYZ",
	"key": "XYZ",
	"endpoint": "http://sandbox.rest.easydns.net",
	"format": "json",
	"delay": 5,
	"ttl": 600
}
```

* `domain` - domain to manage
* `token` - API token received from EasyDNS
* `key` - API key received from EasyDNS
* `endpoint` - API endpoint received from EasyDNS
* `delay` - delay (in seconds) between subsequent API calls to get pass rate limiting
* `ttl` - TTL to use when creating/updating DNS records 

### USAGE

Create DNS record
```
❯❯❯ easydns-restapi-cli.py --conf sample-easydns.conf --create --hostname www --address 127.0.0.1
```

Update DNS record
```
❯❯❯ easydns-restapi-cli.py --conf sample-easydns.conf --update --hostname www --address 127.0.0.2
```

### AUTHORS
- [Puru Tuladhar](github.com/tuladhar)
