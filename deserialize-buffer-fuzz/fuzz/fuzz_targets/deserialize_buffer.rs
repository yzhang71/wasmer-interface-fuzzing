#![no_main]

use parity_wasm::elements::{deserialize_buffer, Module};

use libfuzzer_sys::fuzz_target;

fuzz_target!(|data: &[u8]| {
    let Ok(_module) = deserialize_buffer::<Module>(data) else { return };
});
