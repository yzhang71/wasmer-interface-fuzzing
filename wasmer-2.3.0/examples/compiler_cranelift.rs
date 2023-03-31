//! A Wasm module can be compiled with multiple compilers.
//!
//! This example illustrates how to use the Cranelift compiler.
//!
//! You can run the example directly by executing in Wasmer root:
//!
//! ```shell
//! cargo run --example compiler-cranelift --release --features "cranelift"
//! ```
//!
//! Ready?

use wasmer::{imports, wat2wasm, Instance, Module, Store, Value};
use wasmer_compiler_cranelift::Cranelift;
use wasmer_engine_universal::Universal;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Let's declare the Wasm module with the text representation.
  //   let wasm_bytes = wat2wasm(
  //     r#"
  //     (component
  //       (type 
  //         (union 234 32 u64 234 32 u64 u64 6 4 34 3 364  6 4 32 4  32 
  //           (union 234 32 u64 234 32 u64 u64 6 4 34 3 364  6 4 32 4  32 4 8 4 3 364 32 u64 6 4 32 8  32 8 4 3 364 1 3644 8 4 3 364364  6 4 32 4  32 
  //             (union 234 32 u64 234 32 u64 u64 6 4 34 3 364  6 4 32 4  32 4 8 4 3 364 32 u64 6 4 32 8  32 8 4 3 364 1 3644 8 4 3 364 32 u64 6 4 32 8  32 8 4 3 364
  //             )1  32 u64 6 4 32 8  32 8 4 3 364)1 364 32 3
  //           )
  //         )
  //       )
  //     "#
  //   .as_bytes(),
  // )?;

    let wasm_bytes = std::fs::read("crash-916cbace3f6dbb4b727e3ea2c607b5df90f4fe38")?;

    // Use Cranelift compiler with the default settings
    let compiler = Cranelift::default();

    // Create the store
    let store = Store::new(&Universal::new(compiler).engine());

    println!("Compiling module...");
    // Let's compile the Wasm module.
    let module = Module::new(&store, wasm_bytes)?;

    // Create an empty import object.
    let import_object = imports! {};

    println!("Instantiating module...");
    // Let's instantiate the Wasm module.
    let instance = Instance::new(&module, &import_object)?;

    // let sum = instance.exports.get_function("sum")?;

    // println!("Calling `sum` function...");
    // // Let's call the `sum` exported function. The parameters are a
    // // slice of `Value`s. The results are a boxed slice of `Value`s.
    // let results = sum.call(&[Value::I32(1), Value::I32(2)])?;

    // println!("Results: {:?}", results);
    // assert_eq!(results.to_vec(), vec![Value::I32(3)]);

    Ok(())
}

#[test]
#[cfg(feature = "cranelift")]
fn test_compiler_cranelift() -> Result<(), Box<dyn std::error::Error>> {
    main()
}
