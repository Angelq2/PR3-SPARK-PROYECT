with Ada.Text_IO;   use Ada.Text_IO;
with Pkg_Contador_Pares;  use Pkg_Contador_Pares;

--with system.Assertions;

procedure Tests_Contador_Pares is

   procedure Test_1 is
      vec:Constant vector(1..5):= (0,0,0,0,0);
   begin
      Put ("Test 1: Vector [0,0,0,0,0] ....................................");

      pragma Assert (Contador_Pares(vec) = 5);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      vec:Constant vector(1..4) := (1,3,7,9);
   begin
      Put ("Test 2: Vector impar ....................................");

      pragma Assert (Contador_Pares(vec) = 0);

      Put_Line ("OK");
   end Test_2;


   procedure Test_3 is
      vec:Constant vector(1..8):= (2,4,6,8,10,12,24,88);
   begin
      Put ("Test : Vector todo par ....................................");

      pragma Assert (Contador_Pares(vec) = 8);

      Put_Line ("OK");
   end Test_3;

begin
   Put_Line ("********************* Tests_Contador_Pares");
   Test_1;
   Test_2;
   Test_3;

end Tests_Contador_Pares;
