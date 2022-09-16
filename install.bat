cd helix
cargo install --path helix-term
mklink /J "%AppData%/helix/runtime" "runtime"
cargo clean
cd ..
