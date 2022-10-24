#!/bin/bash
sqlx migrate run 
cargo-watch -i templates -i static -i migrations -x run