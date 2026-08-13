# Privacy

linux-canva-web operates locally and has no telemetry or server.

It stores only the Brave executable path, selected profile directory/root,
public Chromium Web App ID, a copy of the locally installed PWA icon, and its
generated desktop entry.

It does not inspect, copy, upload, back up, modify, or delete Canva designs,
account credentials, cookies, tokens, IndexedDB, Local Storage, Service Worker
data, or Brave profile databases. Network access to Canva is performed by
Brave, not by this helper. Manual installation opens only the official
`https://www.canva.com/` URL.

Diagnostic output includes local executable and profile paths. Review and
redact them before publishing an issue.
