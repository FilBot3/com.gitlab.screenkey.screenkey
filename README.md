# Screenkey as a Flatpak

## Overview

The [Screenkey](https://gitlab.com/screenkey/screenkey) application is handy for
streaming or recording key presses. For systems that are immutable or for those
who prefer to have Flatpaks, this is an ideal situation.

### References

* [GitLab: screenkey/screenkey](https://gitlab.com/screenkey/screenkey)
* [GitHub: flathub/shared-modules](https://github.com/flathub/shared-modules)

## Changelog

* See the [CHANGELOG.md](CHANGELOG.md)

## TODO List

* See the [TODO.todo.md](TODO.todo.md)

## Requirements

* Flatpak
* Flatpak-Builder

## Setup

Clone the repository and it's submodules.

```bash
git clone https://github.com/FilBot3/com.gitlab.screenkey.screenkey.git
git submodule init
git submodule update
```

Download the Flatpak dependencies for building.

```bash
make deps
```

Downloading the `flatpak` and `flatpak-builder` will be dependent on the system
you're using. Probably going to be one of `dnf` or `apt`.

## Building

### Build the application

```bash
make build
```

### Package the Flatpak

```bash
make package
```

### Install the Flatpak

```bash
make install
```

### If the build fails...

If the build fails, you should be able to clean the repository, then rebild.

```bash
make clean deps build package install
```

## Shoutouts

Originally written by [tinywrkb](https://github.com/tinywrkb) and shared on the
[GitLab Issue 106](https://gitlab.com/screenkey/screenkey/-/issues/106). They
put a lot of the initial leg work into this repository.