pragma circom 2.0.0;

template MagicNumber(){
   //Declaration of signals.
   signal input in[9];
   signal input sum;
   
   //rows.
   in[0] + in[1] + in[2] === sum;
   in[3] + in[4] + in[5] === sum;
   in[6] + in[7] + in[8] === sum;


   //columns.
   in[0] + in[3] + in[6] === sum;
   in[1] + in[4] + in[7] === sum;
   in[2] + in[5] + in[8] === sum;

      //diagonals.
   in[0] + in[4] + in[8] === sum;
   in[2] + in[4] + in[6] === sum;

}

component main = MagicNumber();
