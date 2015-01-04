# ChangeIP DNS Updater

Docker container to run DNS updates to a ChangeIP.com account

#### Quick Start

Be sure to enable the "Set 1" switch on the [target host record on your ChangeIP.com account](https://www.changeip.com/accounts/dnsmanager.php).

```
docker pull tribou/changeip-updater
docker run --name='changeip-updater' -d         \
    -e 'CHANGEIP_USERNAME=user'                 \
    -e 'CHANGEIP_PASSWORD=password'             \
    -e 'CHANGEIP_RECORD=myrecord.example.com'   \
    tribou/changeip-updater
```

###### Timezone

The timezone is currently set to 'America/Chicago' but can be changed via the ```TZ``` env variable in the Dockerfile.

#### Development

A [Fig](http://www.fig.sh/) development environment has been provided for the script file.  Just add the required env variables and fig up.

```bash
# Replace the clone URL with your forked repo
git clone https://github.com/tribou/docker-changeip-updater.git
cd docker-changeip-updater
CHANGEIP_USERNAME=username
CHANGEIP_PASSWORD=password
CHANGEIP_RECORD=myrecord.example.com
fig up
```
