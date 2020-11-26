package body Pkg_Buscar_Letra with SPARK_Mode is

   --Busca si hay un elemento igual que el pasado por
   --parámetro y si lo encuentra retorna 1.

   procedure Buscar_Letra (Str   : in String;
                           Value : in Character;
                           Res   : out Natural ) is
      I:Integer:=Str'First;
   begin
      Res:=0;
      if Value /= ASCII.NUL then
         while I <= Str'Length loop
            if Str(I) = Value then
               Res:= Res + 1;
               exit;
            end if;

            pragma Loop_Variant (Increases => I);
            pragma Loop_Invariant(I in Str'Range);

            pragma Loop_Invariant
              (if Res > 0 then
                 (for some K in 1 .. I =>
                      Str(K) = Value)
               elsif Res = 0 then
                 (for all K in 1 .. I =>
                      Str(K) /= Value));
            I := I + 1;
         end loop;
      end if;

   end Buscar_Letra;

end Pkg_Buscar_Letra;
