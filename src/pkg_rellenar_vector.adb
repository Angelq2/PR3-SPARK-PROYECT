package body Pkg_Rellenar_Vector with SPARK_Mode is

   --## RECCORRE UN VECTOR QUE ACTUALIZA CON:
   --##  1  SI  VEC[I] > X
   --##  0  SI  VEC[I] = X
   --## -1  SI  VEC[I] < X

   function Rellenar_Vector (vec     : vector;
                             X       : Natural) return vector is
      J:Integer:= vec'First;
      aux:vector (vec'Range) := (others => 0);

   begin
      while J <= vec'Last loop
         if vec(J) > X then
            aux(J) := 1;
         elsif vec(J) < X then
            aux(J) := -1;
         else
            aux(J) := 0;
         end if;

         pragma Loop_Variant (Increases => J);

         pragma Loop_Invariant (J in vec'Range);
         pragma Loop_Invariant (aux'Length = vec'Length);
         pragma Loop_Invariant
           (for all K in vec'First .. J =>
              aux(K) = 1 or aux(K) = -1 or aux(K) = 0);
         pragma Loop_Invariant
           (for all K in J+1 .. vec'Last =>
           aux(K) = aux'Loop_Entry(K));

         J := J + 1;
      end loop;
      return aux;
   end Rellenar_Vector;

end Pkg_Rellenar_Vector;
