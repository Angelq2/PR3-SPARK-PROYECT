package body Pkg_Duplicar_Pares with SPARK_Mode is

   -- Procedimiento que duplica el valor de los elementos pares del vector
   -- y copia el resultado en otro vector con variable global.

   procedure Duplicar_Pares (V : in vector) is
      J:Positive:= V'First;

   begin
      aux := (1 => 0, others => 0);

      while J <= V'Last loop
         if V(J) mod 2 = 0 then
            aux(J) := V(J)*2;
         else
            aux(J) := V(J);
         end if;

         pragma Loop_Variant (Increases => J);

         pragma Loop_Invariant (J in V'Range);
         pragma Loop_Invariant (aux'Length = V'Length);
         pragma Loop_Invariant
           (for all K in aux'Range =>
              aux(K) <= 20);
         pragma Loop_Invariant
           (for all L in J+1 .. V'Last =>
              aux(L) = aux'Loop_Entry(L));

         J := J + 1;
      end loop;
   end Duplicar_Pares;

end Pkg_Duplicar_Pares;
