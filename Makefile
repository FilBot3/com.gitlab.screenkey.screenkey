.PHONY: build test-install run uninstall package install clean

flatpak_name := com.gitlab.screenkey.screenkey

deps:
	flatpak --user install org.gnome.Platform//42 org.gnome.Sdk//42 --assumeyes

build:
	flatpak-builder test $(flatpak_name).yaml --force-clean
	flatpak-builder --repo=repo --force-clean test $(flatpak_name).yaml

test-install:
	flatpak --user remote-add --no-gpg-verify tutorial-repo repo
	flatpak --user install tutorial-repo $(flatpak_name) --assumeyes

run:
	flatpak run $(flatpak_name)

uninstall:
	flatpak uninstall $(flatpak_name) --assumeyes --delete-data
	flatpak --user remote-delete tutorial-repo --force

package:
	flatpak build-bundle repo $(flatpak_name).flatpak $(flatpak_name)

install: package
	flatpak --user install $(flatpak_name).flatpak --assumeyes

clean:
	rm -rf repo tags.lock tags.temp test tags *.flatpak .flatpak-builder
