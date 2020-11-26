with Ada.Text_IO; use Ada.Text_IO;
with Pkg_impar_matriz;use Pkg_impar_matriz;
--with System.Assertions;

procedure Tests_Impar_Matriz is

   procedure Test_1 is
      Matriz : T_Matrix(1..2, 1..2) := ((1, 2), (3, 4));
      res : constant T_Matrix(1..2, 1..2) := ((2, 2), (4, 4));
   begin

      Put ("Test 1: matrix 2*2 ..................................");

      Impar_Matriz(Matriz);
      pragma Assert (Matriz = res);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Matriz : T_Matrix(1..2, 1..3) := ((0,0,0), (0,0,0));
      res : constant T_Matrix(1..2, 1..3) := ((0,0,0), (0,0,0));
   begin

      Put ("Test 2: matrix 2*3 ..................................");

      Impar_Matriz(Matriz);
      pragma Assert (Matriz = res);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Matriz : T_Matrix(1..2, 1..2) := ((8,88), (888,8888));
      res : constant T_Matrix(1..2, 1..2) := ((8,88), (888,8888));
   begin

      Put ("Test 3: matrix 2*2 ..................................");

      Impar_Matriz(Matriz);
      pragma Assert (Matriz = res);

      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Tests_Impar_Matriz");
   Test_1;
   Test_2;
   Test_3;
end Tests_Impar_Matriz;
