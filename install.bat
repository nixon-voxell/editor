cd helix
cargo install --locked --path helix-term
cargo clean
mkdir "%AppData%/helix/runtime"
mklink /J "%AppData%/helix/runtime/grammars" "./runtime/grammars"
mklink /J "%AppData%/helix/runtime/queries" "./runtime/queries"
mklink /J "%AppData%/helix/runtime/themes" "./runtime/themes"
cd ..
git config --global core.editor "hx"
xcopy "config.toml" "%AppData%/helix/config.toml"
xcopy "languages.toml" "%AppData%/helix/languages.toml"
