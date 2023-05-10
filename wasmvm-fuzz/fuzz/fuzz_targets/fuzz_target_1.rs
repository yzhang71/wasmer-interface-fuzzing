#![no_main]

use libfuzzer_sys::fuzz_target;
use tempfile::TempDir;
use std::fs;
// use cosmwasm_std::{coins, HumanAddr};
use cosmwasm_vm::testing::{MockApi, MockStorage, MockQuerier};
use cosmwasm_vm::{
    features_from_csv, Cache, CacheOptions, Size,
};

const MEMORY_CACHE_SIZE: Size = Size::mebi(200);

fuzz_target!(|data: &[u8]| {
    let base_dir = TempDir::new().unwrap().path().to_path_buf();
    // println!("base_dir: {:?}", &base_dir);
    let base_dir_cp = base_dir.clone();
    let options = CacheOptions {
        base_dir,
        supported_features: features_from_csv("staking"),
        memory_cache_size: MEMORY_CACHE_SIZE,

    };
    let mut cache: Cache<MockApi, MockStorage, MockQuerier> = unsafe { Cache::new(options) }.unwrap();
    // store code
    let result = cache.save_wasm(data);
    fs::remove_dir_all(base_dir_cp).expect("Failed to remove directory");
    match result {
        Ok(_) => return,
        Err(_) => return,
    }
});
