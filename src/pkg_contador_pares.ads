package Pkg_Contador_Pares with SPARK_Mode is

   --Recorre un vector y devuelve una variable el número de
   --elementos pares del vector.

   type vector is array (Positive range <>) of Natural;

   function Contador_Pares
     (vec  : in vector)return Natural

   with
      Global  => null,
      Depends => (Contador_Pares'Result => vec),
      Pre     => vec'First >= 1
                   and then
                 vec'Last <= Natural'Last
                   and then
                 (for all J in vec'Range =>
                      vec(J) in 0..Natural'Last),
       Post    => Contador_Pares'Result >= 0;



end Pkg_Contador_Pares;
