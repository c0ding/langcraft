rustc rustfunction.rs -C panic=abort -C opt-level=0 --emit=llvm-ir,llvm-bc --crate-type=rlib --target=i686-unknown-linux-gnu
