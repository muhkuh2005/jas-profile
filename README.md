jas-profile
===========

My Shell und vim Profiles with automatic installation

Setup
-----

```bash
mkdir -p ~/.config;
git clone git@github.com:possi/jas-profile.git ~/.config/jas-profile;
sh ~/.config/jas-profile/setup.sh install-cloned;
```

**Quick-Setup:**
```bash
curl -s https://raw.githubusercontent.com/possi/jas-profile/master/setup.sh | bash; # or
wget -O - https://raw.githubusercontent.com/possi/jas-profile/master/setup.sh | bash; # or
lnyx -source https://raw.githubusercontent.com/possi/jas-profile/master/setup.sh | bash;
```

Recommended cygwin enhancements
-------------------------------
* [apt-cyg](https://github.com/transcode-open/apt-cyg)
* [OH MY CYGWIN](https://github.com/haithembelhaj/oh-my-cygwin)

My Defaults
-----------
* Cygwin-Font: Consola with PowerLine ([consola.ttf](https://github.com/nicolalamacchia/powerline-consolas))
* Ubuntu-Font: [DejaVu Sans Mono for Powerline](https://github.com/powerline/fonts)
* Terminal-Size: 144 x 48

Internals:
----------

Update all dependencies:
```bash
git submodule -q foreach git pull -u origin master
```
