#!/usr/bin/env bash
set -Eeuo pipefail

PREFIX="${HOME:?HOME is not set}/.local"
ASSUME_YES=false

while (( $# )); do
  case "$1" in
    --prefix) [[ $# -ge 2 ]] || { echo "--prefix requires a path" >&2; exit 2; }; PREFIX="$2"; shift 2 ;;
    --yes) ASSUME_YES=true; shift ;;
    --help|-h) echo "Usage: ./uninstall.sh [--prefix PATH] [--yes]"; exit 0 ;;
    *) echo "Unknown option: $1" >&2; exit 2 ;;
  esac
done

[[ "${EUID}" -ne 0 ]] || { echo "Do not run this uninstaller as root or with sudo." >&2; exit 1; }

HELPER="${PREFIX}/bin/linux-canva-web"
if [[ -x "${HELPER}" ]]; then
  if [[ "${ASSUME_YES}" == true ]]; then
    "${HELPER}" uninstall --yes
  else
    "${HELPER}" uninstall
  fi
else
  echo "Installed helper not found; removing only known project-owned files."
  rm -f -- \
    "${XDG_DATA_HOME:-${HOME}/.local/share}/applications/linux-canva-web.desktop" \
    "${XDG_DATA_HOME:-${HOME}/.local/share}/icons/hicolor/256x256/apps/linux-canva-web.png" \
    "${XDG_CONFIG_HOME:-${HOME}/.config}/linux-canva-web/config"
  rmdir --ignore-fail-on-non-empty "${XDG_CONFIG_HOME:-${HOME}/.config}/linux-canva-web" 2>/dev/null || true
fi

rm -f -- "${HELPER}"
rm -f -- \
  "${PREFIX}/share/doc/linux-canva-web/README.md" \
  "${PREFIX}/share/doc/linux-canva-web/LICENSE" \
  "${PREFIX}/share/doc/linux-canva-web/SECURITY.md" \
  "${PREFIX}/share/doc/linux-canva-web/THIRD_PARTY_NOTICES.md"
rmdir --ignore-fail-on-non-empty "${PREFIX}/share/doc/linux-canva-web" 2>/dev/null || true
echo "linux-canva-web program files removed. Brave, Canva account, and design data were not touched."
