# Changelog

All notable changes to this project are documented here.

## 0.1.1 - 2026-08-13

- Make release publishing idempotent when a tag release already exists.

## 0.1.0 - 2026-08-13

Initial community preview:

- Brave native/Snap and per-profile Canva PWA discovery;
- deterministic validation of the canonical `https://www.canva.com/` Web App ID;
- per-user XDG launcher with correct PWA window class;
- read-only human and JSON diagnostics;
- explicit, user-only IBus input repair;
- documentation for disabling Canva's unsupported native-app redirect on Linux;
- conservative uninstall that preserves browser, Canva account, and design data;
- isolated integration tests, ShellCheck CI, source archive, and `.deb` package.
