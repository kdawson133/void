# void
Setup scripts post void install to install the the following;

- Niri

- Network Manager

- Pipewire

- Steam

## Greeter Installation

```sh

sudo xbps-install greetd tuigreet

```

## Greeter Configuration

Edit the file `/etc/greetd/config.toml`  and ammend the `command` and `user` line as;

```sh
command = "tuigreet --time --remember --cmd 'dbus-run-session niri --session'"

user = "_greeter"

```

```sh

sudo ln -s /etc/sv/greetd /var/service 

```


