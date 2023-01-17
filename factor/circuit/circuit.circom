template Factors() {
    signal input a;
    signal input b;
    signal output z;

    z <-- a*b;
    z === a*b;
}

component main = Factors();