# Installation

## 1. Install Brave

Use Brave's [official Linux instructions](https://brave.com/linux/). The
official native package and Snap are supported. The helper never installs a
browser or changes repositories.

## 2. Install the helper as your normal user

```bash
./install.sh
```

Do not use `sudo`. Files are installed below `~/.local` by default.

## 3. Install Canva as a Brave Web App

If Canva is already installed in the selected Brave profile, setup detects it.
Otherwise it opens only the official site:

1. Sign in to Canva if desired.
2. In Brave choose **Save and share -> Install Canva**.
3. Return to the terminal and press Enter.

The helper validates the PWA identity, copies its locally installed icon for
the launcher, and writes a desktop entry. It never reads cookies, IndexedDB,
account data, or designs.

## 4. Keep links in the Web App on Linux

In Canva open **Settings -> Your profile -> Link opening** and turn off
**Open links in Desktop App**. This is a Canva account preference and therefore
must be changed by the user; the helper deliberately does not automate it.

## Multiple Brave profiles

```bash
linux-canva-web setup --profile "Profile 1"
```

If automatic discovery cannot select safely, verify the public 32-letter PWA
ID and pass it explicitly. The helper still validates it against Canva's
canonical manifest identity:

```bash
linux-canva-web setup --profile "Profile 1" --app-id APP_ID
```

## Custom installation prefix

```bash
./install.sh --prefix "$HOME/.local"
```
