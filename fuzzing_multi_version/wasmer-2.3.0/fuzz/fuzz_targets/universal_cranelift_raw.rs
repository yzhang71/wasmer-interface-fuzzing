#![no_main]

use libfuzzer_sys::{ fuzz_target};
use wasmer::{imports, wat2wasm, Instance, Module, Store};
use wasmer_compiler_cranelift::Cranelift;
use wasmer_engine_universal::Universal;

fuzz_target!(|data: &[u8]| {

    let wasm_bytes;

    match wat2wasm(data) {
        Ok(ret) => {wasm_bytes = ret}
        Err(_) => {
            return;
        }
    }

    // let wasm_bytes = wat2wasm(data).unwrap();

    // if let Ok(path) = std::env::var("DUMP_TESTCASE") {
    //     use std::fs::File;
    //     use std::io::Write;
    //     let mut file = File::create(path).unwrap();
    //     file.write_all(&wasm_bytes).unwrap();
    //     return;
    // }

    let compiler = Cranelift::default();
    let engine = Universal::new(compiler).engine();
    let store = Store::new(&engine);

    let module;
    match Module::new(&store, &wasm_bytes) {
        Ok(ret) => {module = ret}
        Err(_) => {
            return;
        }
    }

    // let module = Module::new(&store, &wasm_bytes).unwrap();

    match Instance::new(&module, &imports! {}) {
        Ok(_) => {}
        Err(e) => {
            println!("{}", e);
        }
    }
});
