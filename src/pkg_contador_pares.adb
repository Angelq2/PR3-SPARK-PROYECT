package body Pkg_Contador_Pares with SPARK_Mode is

   function Contador_Pares
     (vec : in vector) return Natural is

      res:Natural:=0;
   begin

      for I in vec'Range loop

         if(vec(I) mod 2 = 0)then
            --ES UN NUMERO PAR
            res := res + 1;
         end if;

         pragma Loop_Invariant(res <= I);

      end loop;

      return res;
   end Contador_Pares;

end Pkg_Contador_Pares;
