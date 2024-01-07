# MacBook setup

A not-quite-perfect list of scripts used to configure tools on my personal MacBook.

## Usage

Standard use of script is:

```bash
bash SCRIPTNAME.sh install

bash SCRIPTNAME.sh uninstall
```

## Extras

### Python

Also worth adding a `~/.pip/pip.conf` containing[^1]:

```bash
[global]
require-virtualenv = true
```

[^1]: https://blog.glyph.im/2023/08/get-your-mac-python-from-python-dot-org.html#and-always-use-virtual-environments 
