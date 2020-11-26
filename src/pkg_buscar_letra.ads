package Pkg_Buscar_Letra with SPARK_Mode is

   procedure Buscar_Letra (Str   : in String;
                            Value : in  Character;
                            Res   : out Natural )

   with
       Global  => null,
       Depends => (Res => (Str,Value)),
       Pre     => Str'Length in 1 .. 100 and then Value /= ASCII.NUL,
       Post    => (if Res > 0 then
                   (for some K in Str'Range =>
                        Str(K) = Value)
                     elsif Res = 0 then
                   (for all K in Str'Range =>
                        Str(K) /= Value));


end Pkg_Buscar_Letra;
