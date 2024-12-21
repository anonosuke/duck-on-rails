import * as duckdb from "duck-db";

duckdb.initialize();
console.log('DuckDB initialized');
console.log(duckdb.version());