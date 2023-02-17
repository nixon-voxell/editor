cd helix
cargo install --locked --path helix-term
mklink /J "%AppData%/helix/runtime" "runtime"
cd ..
git config --global core.editor "hx"
xcopy "config.toml" "%AppData%/helix/config.toml"
xcopy "languages.toml" "%AppData%/helix/languages.toml"
