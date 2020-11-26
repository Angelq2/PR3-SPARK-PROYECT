package body Pkg_Impar_Matriz with SPARK_Mode is
   
   --incrementa en 1 solo los elementos impares de la matriz
   
   procedure Impar_Matriz (Matriz : in out T_Matrix) is

   begin

      for fila in Matriz'Range(1) loop
         
         for columna in Matriz'Range(2) loop
            
            if Matriz(fila,Columna) mod 2 /= 0 then
               
               Matriz(fila,Columna) := Matriz(fila,Columna) + 1;
    
            end if;
            
            pragma Loop_Invariant(for all I in Matriz'First(2) ..columna =>
                                    (Matriz(fila,I) = Matriz'Loop_Entry(fila,I) + 1) or
                                      (Matriz(fila,I) = Matriz'Loop_Entry(fila,I)));  
               
         end loop;
         
         pragma Loop_Invariant(for all I in Matriz'First(1)..fila =>
                                 (for all J in Matriz'Range(2) =>
                                   (Matriz(I,J) - Matriz'Loop_Entry(I,J) = 1) or
                                     (Matriz(I,J) - Matriz'Loop_Entry(I,J) = 0)));
         
      end loop;
      
   end Impar_Matriz;

end pkg_Impar_Matriz;
