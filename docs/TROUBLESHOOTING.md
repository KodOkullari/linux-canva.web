# Troubleshooting

## “Opening in desktop app” appears on Linux

In Canva go to **Settings -> Your profile -> Link opening** and turn off
**Open links in Desktop App**. Canva documents this account-level switch in its
[official desktop-app basics guide](https://www.canva.com/help/pagecanva-desktop-app-basics/).

## Keyboard works elsewhere but not in Brave / Canva

First run the read-only check:

```bash
linux-canva-web doctor
```

If the IBus address is missing or points to a missing socket, save unfinished
text, preview with `linux-canva-web repair-input`, and apply only after reading
the warning:

```bash
linux-canva-web repair-input --apply
```

Then close every Brave window and start Canva again. The command uses the
documented user-session `ibus restart`; it does not delete sockets or caches.

## Login is not remembered

Always open the same Brave profile. Check that Brave is not configured to
delete site data for `canva.com` on exit. Never copy cookies, tokens, IndexedDB,
or profile databases between installations.

## Launcher opens or groups the wrong window

Run setup again. The generated entry uses the installed PWA's `crx_<app-id>`
window class so GNOME/KDE can group the correct window.

## PWA is not found

Confirm the app exists at `brave://apps`, then rerun setup with the correct
profile name. Use explicit `--app-id` only after verifying the candidate.

## Safe issue reports

Run `linux-canva-web doctor --json`, review the output, and redact local user or
profile paths if desired. Never upload account screens, designs, cookies,
tokens, or browser profile databases.
