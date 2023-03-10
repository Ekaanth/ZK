cd magicNumber_js
node generate_witness.js magicNumber.wasm ../input.json ../witness.wtns
cd ../
./node_modules/.bin/snarkjs plonk prove magicNumber_final.zkey witness.wtns proof.json public.json
rm witness.wtns
