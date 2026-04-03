#!/usr/bin/env bash

set -euo pipefail

readonly REPO="taiyme/dotfiles"
readonly REPO_BRANCH="main"
readonly DOTFILES_DIR="${HOME}/.dotfiles"
readonly FLAKE_HOST="taiy-m1mba"

_info() {
  printf "\n[INFO] %s\n" "$1"
}

_command_exists() {
  command -v "$1" >/dev/null 2>&1
}

_install_homebrew() {
  _info "Homebrew をインストールします..."
  /bin/bash -c "$(curl --proto '=https' --tlsv1.2 -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

_ensure_homebrew() {
  if ! _command_exists /opt/homebrew/bin/brew; then
    _install_homebrew
  fi

  /opt/homebrew/bin/brew --version
}

_install_determinate_nix() {
  _info "Determinate Nix をインストールします..."
  curl --proto '=https' --tlsv1.2 -fsSL https://install.determinate.systems/nix | sh -s -- install --no-confirm

  if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
    # shellcheck disable=SC1091
    . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  fi
}

_ensure_determinate_nix() {
  if ! _command_exists nix; then
    _install_determinate_nix
  fi

  nix --version
}

_fetch_dotfiles() {
  _git() {
    nix run "nixpkgs/nixos-25.11#git" -- "$@"
  }

  if [[ -d "${DOTFILES_DIR}/.git" ]]; then
    _info "最新の内容を取得します..."
    _git -C "$DOTFILES_DIR" fetch origin "$REPO_BRANCH"
    _git -C "$DOTFILES_DIR" checkout "$REPO_BRANCH"
    _git -C "$DOTFILES_DIR" rebase "origin/${REPO_BRANCH}"
  else
    _info "リポジトリをクローンします..."
    _git clone --branch "$REPO_BRANCH" "https://github.com/${REPO}.git" "$DOTFILES_DIR"
  fi
}

_apply_dotfiles() {
  _darwin_rebuild() {
    if _command_exists darwin-rebuild; then
      sudo darwin-rebuild "$@"
    else
      sudo nix run "nix-darwin/nix-darwin-25.11#darwin-rebuild" -- "$@"
    fi
  }

  _info "設定を適用します..."
  _darwin_rebuild switch --flake "${DOTFILES_DIR}#${FLAKE_HOST}"
}

_main() {
  _ensure_homebrew
  _ensure_determinate_nix
  _fetch_dotfiles
  _apply_dotfiles
}

_main
