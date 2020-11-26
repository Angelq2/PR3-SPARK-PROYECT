package Pkg_Impar_Matriz with SPARK_Mode is

   type T_Matrix is array (Natural range <>,Natural range <>) of Integer;
   
   procedure Impar_Matriz (Matriz : in out T_Matrix)

     with
       Global  => null,
       Depends => (Matriz => Matriz),
       Pre     => Matriz'Length(1) > 0 and then Matriz'Length(2) > 0 and then
                  (for all fila in Matriz'Range(1) =>
                     (for all columna in Matriz'Range(2) =>
                        Matriz(fila,columna) <= Integer'Last - 1)),
       Post    => (for all fila in Matriz'Range(1) =>
                      (for all columna in Matriz'Range(2) =>
                              Matriz(fila,columna) = Matriz'Old(fila,columna) + 1 or
                                Matriz(fila,columna) = Matriz'Old(fila,columna)));


end pkg_Impar_Matriz;
