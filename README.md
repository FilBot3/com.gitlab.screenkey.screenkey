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