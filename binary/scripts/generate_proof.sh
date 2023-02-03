cd binaryCheck_js
node generate_witness.js binaryCheck.wasm ../input.json ../witness.wtns
cd ../
./node_modules/.bin/snarkjs plonk prove binaryCheck_final.zkey witness.wtns proof.json public.json
rm witness.wtns
