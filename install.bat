@echo off

cd helix
cargo install --locked --path helix-term
cargo clean
git config --global core.editor "hx"

mkdir "%AppData%\helix\runtime"
mklink /J "%AppData%\helix\runtime\grammars" ".\runtime\grammars"
mklink /J "%AppData%\helix\runtime\queries" ".\runtime\queries"
mklink /J "%AppData%\helix\runtime\themes" ".\runtime\themes"

cd ..
xcopy ".\configs\helix\config.toml" "%AppData%/helix/config.toml"
xcopy ".\configs\helix\languages.toml" "%AppData%/helix/languages.toml"
