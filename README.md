# Presentation

# Setup

## OpenVPN

### Config file

Download the student openvpn profile file and place it in the current directory under the name `config.ovpn`

### Credentials

Create a file named `credentials` and input you VPN username on the first line, and password on the second line, as shown in _credentials.example_.

## Tinyproxy

Copy `.env.example` to `.env` and set your desired username and password for the proxy.

## Squid (not available)

**Due to crashes of basic_ncsa_auth, squid is currently disabled and replaced by tinyproxy**

Generate an account for the proxy:

The following command will ask for a password associated to the provided `username` and store it hashed in BCrypt in the file `passwords`.

```bash
htpasswd -c -B passwords username
```

# Usage

To launch the containers

```bash
docker-compose up -d
```

To test the proxy connexion

```bash
curl --proxy "proxy_username:proxy_password@proxy_domain:31280" https://extranet.ensimag.fr
```
