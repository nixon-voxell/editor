#!/bin/bash
set -u

cd helix
cargo install --path helix-term
ln -s $PWD/runtime ~/.config/helix/runtime
cargo clean
cd ..
git config --global core.editor "hx"
cp -u config.toml ~/.config/helix/config.toml
cp -u languages.toml ~/.config/helix/languages.toml
