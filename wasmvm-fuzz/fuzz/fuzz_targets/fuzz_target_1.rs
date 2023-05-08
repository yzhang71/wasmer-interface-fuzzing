#![no_main]

use libfuzzer_sys::fuzz_target;
use tempfile::TempDir;

// use cosmwasm_std::{coins, HumanAddr};
use cosmwasm_vm::testing::{MockApi, MockStorage, MockQuerier};
use cosmwasm_vm::{
    features_from_csv, Cache, CacheOptions, Size,
};

const MEMORY_CACHE_SIZE: Size = Size::mebi(200);

fuzz_target!(|data: &[u8]| {
    let options = CacheOptions {
        base_dir: TempDir::new().unwrap().path().to_path_buf(),
        supported_features: features_from_csv("staking"),
        memory_cache_size: MEMORY_CACHE_SIZE,
    };
    let mut cache: Cache<MockApi, MockStorage, MockQuerier> = unsafe { Cache::new(options) }.unwrap();

    // store code
    let result = cache.save_wasm(data);
    drop(cache);
    match result {
        Ok(_) => return,
        Err(_) => return,
    }
});
