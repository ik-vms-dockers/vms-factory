# Kali Setup

- [Kali on Docker UI](https://hub.docker.com/r/lukaszlach/kali-desktop/dockerfile)
- [Kali on Docker](https://hub.docker.com/r/kalilinux/kali-rolling)
- [Kali Tools Flavour](https://www.kali.org/news/kali-linux-metapackages/)

## Pen Test Tools

- [Crowbar](https://github.com/galkan/crowbar)

- [Proper Document and Install](https://marduc812.com/2017/05/28/penetration-testing-tools-for-mac-os/)
- [List of Cool PEntest Tools](https://github.com/sidaf/homebrew-pentest)

### information-gathering

| Name      | Cmd       | Description  | Url  |
|-----------|-----------|--------------|------|
| GoBuster  | gobuster  | dns  | github.com/OJ/gobuster   |
| DNSRecon  |  dnsrecon | dns | github.com/darkoperator/dnsrecon  |
|   |   |   |   |
| Enum4linux | enum4linux  | enumerating information from Windows and Samba systems  | labs.portcullis.co.uk/tools/enum4linux/  |
| SnmPCheck  | snmpcheck  | network, snmp protocol |  http://www.nothink.org/codes/snmpcheck/ |
| NetDiscover  | netdiscover | net   | ww1.nixgeneration.com/ |
|   |   |   |   |
| TheHarvester  | theHarvester  | emails, names, subdomains, IPs and URLs  | github.com/laramies/theHarvester  |
| WhatWeb  | whatweb  | webpage analyzer  |  github.com/urbanadventurer/WhatWeb |
| WAFW00F | wafw00f  | waf analyzer  |  github.com/EnableSecurity/wafw00f |

### vulnerability-analysis

| Name      | Cmd       | Description  | Url  |
|-----------|-----------|--------------|------|
|   |   |   |   |

- [Aircrack NG](https://www.aircrack-ng.org/)

### exploitation

| Name      | Cmd       | Description  | Url  |
|-----------|-----------|--------------|------|
|   |   |   |   |

### post-exploitation

| Name      | Cmd       | Description  | Url  |
|-----------|-----------|--------------|------|
|   |   |   |   |

### password-recovery

| Name      | Cmd       | Description  | Url  |
|-----------|-----------|--------------|------|
|   |   |   |   |

### wordlists

| Name      | Description  | Url  |
|-----------|-----------|--------------|------|
| FuzzDB  |   The Fuzzdb wordlists can be found in '$(brew --prefix)/share/fuzzdb' |  https://github.com/fuzzdb-project/fuzzdb |
| RobotsDisallowed | robots.txt with restricted dirs in '$(brew --prefix)/share/robots_disallowed' | https://github.com/danielmiessler/RobotsDisallowed  |
| SecurityLists  | collection of multiple types of lists used during security assessments in '$(brew --prefix)/share/sec_lists'  | https://github.com/danielmiessler/SecLists  |

## General Use Tools

- [Pass](https://www.passwordstore.org/)
- [Terminator](https://gnome-terminator.org/)
- [Ruby](https://www.ruby-lang.org/en/)

## TODO

- Go over all the tools and install them
- Dockerize missing tools
- Migrate toos from Brewfile probably.
- Migrate word lists, pull them from github, add aliases to them
