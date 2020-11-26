with Ada.Text_IO;  use Ada.Text_IO;
with Pkg_Duplicar_Pares; use Pkg_Duplicar_Pares;
with System.Assertions;

procedure Tests_Duplicar_Pares is

   procedure Test_1 is
      V : constant vector := (3,4,3,4,3,4,3,4,4,4);
      res : constant vector := (3,8,3,8,3,8,3,8,8,8);
   begin

      Put ("Test 1: ..................................");
      Duplicar_Pares(V);
      pragma Assert (res = aux);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      V : constant vector := (others => 2);
      res : constant vector := (others => 4);
   begin

      Put ("Test 2: ..................................");
      Duplicar_Pares(V);
      pragma Assert (res = aux);

      Put_Line ("OK");

   end Test_2;

   procedure Test_3 is
      V : constant vector := (others => 24);
      res : constant vector := (others => 48);
   begin

      Put ("Test 3: ..................................");
      Duplicar_Pares(V);
      pragma Assert (res = aux);

      Put_Line ("Error");

      exception
       when System.Assertions.Assert_Failure =>
       Put_Line ("OK"); -- La precondicion debe fallar en este caso
   end Test_3;

   procedure Test_4 is
      V : constant vector := (others => 0);
      res : constant vector := (others => 0);
   begin

      Put ("Test 4: ..................................");
      Duplicar_Pares(V);
      pragma Assert (res = aux);

      Put_Line ("OK");

   end Test_4;

begin
   Put_Line ("********************* Tests_Duplicar_Pares");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end Tests_Duplicar_Pares;
