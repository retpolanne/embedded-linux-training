# Embedded Linux training notes and env

This is a repo where I'll keep my notes and env for [Bootlin's embedded Linux training](https://bootlin.com/training/embedded-linux/).

Clone this repo with:
```sh
git clone --recurse-submodules thisrepo.git
```

Download the training data with wget:

```sh
wget https://bootlin.com/doc/training/embedded-linux/embedded-linux-labs.tar.xz
tar xvf embedded-linux-labs.tar.xz
```

Install the dependencies

```sh
sudo pacman -S - < pacman.txt
```

Source the env vars needed:

```sh
source crosstoolenv
```

Copy the crosstool-ng-config to the ct-ng directory

```sh
cp crosstool-ng-config ./crosstool-ng/.config
```


