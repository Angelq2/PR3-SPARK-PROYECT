package Pkg_Duplicar_Pares with SPARK_Mode is

   type vector is array (1 .. 10) of Natural;

   aux:vector;
   procedure Duplicar_Pares (V : in vector)

   with
       Global  => (Output => aux),
       Depends => (aux => (V)),
       Pre     => V'First = 1
                    and then
                  aux'First = 1
                    and then
                  (for all K in V'Range =>
                     V(K) >= 0
                    and then
                     V(K) < 11),
       Post    => (for all K in aux'Range =>
                    aux(K) <= 20);

end Pkg_Duplicar_Pares;
