# linux-canva.web

[Turkce belge](docs/README.tr.md)

A small, auditable Linux helper for running the **official Canva website** as
an installed Brave Web App. It discovers the real PWA created by Brave, creates
a correctly grouped application-menu launcher, and offers conservative input
diagnostics.

> **Independent community project:** This project is not affiliated with,
> endorsed by, sponsored by, or an official product of Canva Pty Ltd or Brave
> Software, Inc. Canva and Brave are trademarks of their respective owners.
> This project does not distribute or modify Canva or Brave.

## What it does

- detects the official Brave native package or Brave Snap;
- identifies the installed Canva PWA from the canonical `https://www.canva.com/` identity;
- creates a correctly grouped per-user Linux desktop launcher;
- checks Brave, the selected profile, the PWA, the launcher, and IBus;
- offers an explicit, user-only `ibus restart` repair for failed keyboard input;
- removes only its own launcher, icon copy, configuration, and helper files.

## What it does not do

- no unofficial Canva client, page modification, scraping, or browser automation;
- no cookie, token, browser profile, account, design, or IndexedDB copying;
- no automatic Brave installation, profile migration, login, or IBus restart;
- no Canva or Brave binaries, logos, screenshots, or user data in this repository.

## Requirements

- Linux desktop with Bash 4+, Python 3, and desktop-file support;
- [Brave installed from its official Linux packages](https://brave.com/linux/)
  (native packages are preferred; the official Snap is supported);
- a Canva account if you want to use account-only features.

## Install

```bash
git clone https://github.com/KodOkullari/linux-canva.web.git
cd linux-canva.web
./install.sh
```

If the Web App is not installed yet, setup opens only `https://www.canva.com/`.
In Brave choose **Save and share -> Install Canva**, return to the terminal, and
press Enter. See [the detailed installation guide](docs/INSTALL.md).

After setup, launch **Canva** from the application menu.

### Ubuntu/Debian package

Tagged releases also include a small, architecture-independent `.deb`:

```bash
sudo apt install ./linux-canva-web_0.1.0_all.deb
linux-canva-web setup
```

The package installs only the helper and documentation. Package installation
does not open Brave, restart IBus, or touch any browser profile.

## Commands

```text
linux-canva-web setup
linux-canva-web launch
linux-canva-web doctor
linux-canva-web doctor --json
linux-canva-web repair-input
linux-canva-web repair-input --apply
linux-canva-web uninstall
```

`repair-input` is a dry run. Only `repair-input --apply` restarts the current
user's IBus service, after displaying a warning.

## Prevent the unsupported desktop-app redirect on Linux

Canva can try to open its native desktop-app protocol even though Canva's
official desktop download page does not offer a Linux native app. In Canva go
to **Settings -> Your profile -> Link opening** and turn off
**Open links in Desktop App**. This account setting makes links continue in the
Brave Web App instead of stopping on the “Opening in desktop app” page.

The helper does not toggle this setting automatically because it is an account
preference and changing it requires page/account automation, which is outside
the project's safety boundary. Canva documents this toggle in its official
[desktop-app basics guide](https://www.canva.com/help/pagecanva-desktop-app-basics/).

## Privacy

The configuration contains only the Brave executable path, profile directory
name, profile root path, and public Chromium Web App ID. It contains no Canva
credentials or designs. Read [PRIVACY.md](docs/PRIVACY.md) before posting
diagnostics publicly.

## Uninstall

```bash
./uninstall.sh
```

This does **not** uninstall Brave, remove the Brave Web App, log you out, or
delete Canva/browser data. Manage the PWA separately at `brave://apps`.

## Support and limitations

This preview was live-tested on Ubuntu 24.04, GNOME/X11, and Brave Snap. The
isolated tests also cover native and Snap path layouts. Wayland and other
desktop environments need wider community testing. Canva and Brave can change
independently, so permanent compatibility cannot be guaranteed.

- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Security policy](SECURITY.md)
- [Contributing](CONTRIBUTING.md)

## Upstream references

- [Canva desktop-app basics and link-opening setting](https://www.canva.com/help/pagecanva-desktop-app-basics/)
- [Canva desktop download page](https://www.canva.com/download/windows/)
- [Brave: install and use Web Apps](https://support.brave.app/hc/en-us/articles/39077114659597-How-do-I-install-and-use-Web-Apps-in-Brave)
- [Brave Linux installation](https://brave.com/linux/)
- [Chromium Web App identifier implementation](https://chromium.googlesource.com/chromium/src/+/refs/heads/main/chrome/browser/web_applications/app_id_helpers.cc)
- [IBus command documentation](https://man.archlinux.org/man/ibus.1.en)

## License

Project code and original documentation are available under the [MIT License](LICENSE).
See [third-party notices](THIRD_PARTY_NOTICES.md) for upstream names and links.
