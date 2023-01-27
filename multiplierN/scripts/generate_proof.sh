cd multiplierN_js
node generate_witness.js multiplierN.wasm ../input.json ../witness.wtns
cd ../
./node_modules/.bin/snarkjs plonk prove multiplierN_final.zkey witness.wtns proof.json public.json
rm witness.wtns
