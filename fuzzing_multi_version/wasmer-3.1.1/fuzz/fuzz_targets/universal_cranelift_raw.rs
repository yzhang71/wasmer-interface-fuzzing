#![no_main]

use libfuzzer_sys::{ fuzz_target};
use wasmer::{imports, wat2wasm, Instance, Module, Store};
use wasmer_compiler_cranelift::Cranelift;

fuzz_target!(|data: &[u8]| {

    match wat2wasm(data) {
        Ok(_) => {}
        Err(_) => {
            return;
        }
    }

    let wasm_bytes = wat2wasm(data).unwrap();

    if let Ok(path) = std::env::var("DUMP_TESTCASE") {
        use std::fs::File;
        use std::io::Write;
        let mut file = File::create(path).unwrap();
        file.write_all(&wasm_bytes).unwrap();
        return;
    }

    let compiler = Cranelift::default();
    let mut store = Store::new(compiler);

    match Module::new(&store, &wasm_bytes) {
        Ok(_) => {}
        Err(_) => {
            return;
        }
    }

    let module = Module::new(&store, &wasm_bytes).unwrap();

    match Instance::new(&mut store, &module, &imports! {}) {
        Ok(_) => {}
        Err(e) => {
            println!("{}", e);
        }
    }
});
