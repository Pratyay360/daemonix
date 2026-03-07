#!/bin/bash

RM_PACKAGES=(
  konsole
  kate
  nvtop
  krfb
  kcharselect
  google-cloud-cli
)

dnf remove -y "${RM_PACKAGES[@]}"

# Installed RPMS

PACKAGES=(
  distrobox
  fastfetch
  libavcodec-freeworld
  mpv
  VK_hdr_layer
  docker-ce
  docker-ce-cli
  containerd.io
  docker-buildx-plugin
  docker-compose-plugin
  code
  btop
  ghostty
  fish
  cloudflare-warp
)

dnf install --setopt=install_weak_deps=False -y "${PACKAGES[@]}"
