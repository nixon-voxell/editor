cd helix
cargo install --path helix-term
mklink /J "%AppData%/helix/runtime" "runtime"
cargo clean
cd ..
git config --global core.editor "hx"
mklink /H "%AppData%/helix/config.toml" "config.toml"