with Ada.Text_IO; use Ada.Text_IO;
with Pkg_Rellenar_Vector;     use Pkg_Rellenar_Vector;
with System.Assertions;

procedure Tests_Rellenar_Vector is

   procedure Test_1 is
      Vec : constant Vector (1 .. 1) := (1 => 2);
      X : constant Natural := 1;
      res : constant Vector (1 .. 1) := (1 => 1);
   begin

      Put ("Test 1:  ....................................");

      pragma Assert (res = Rellenar_Vector (vec, X));
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Vec : constant Vector (1 .. 1) := (1 => 2);
      X : constant Natural := 1;
      res : constant Vector (1 .. 1) := (1 => 1);
   begin

      Put ("Test 2:  ....................................");

      pragma Assert (res = Rellenar_Vector (vec, X));
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Vec : constant Vector (1 .. 1) := (1 => 2);
      X : constant Natural := 3;
      res : constant Vector (1 .. 1) := (1 => -1);
   begin

      Put ("Test 3:  ....................................");

      pragma Assert (res = Rellenar_Vector (vec, X));
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Vec : constant Vector (1 .. 3) := (Integer'First+1,0,Integer'Last-1);
      X : constant Natural := 0;
      res : constant Vector (1 .. 3) := (-1,0,1);
   begin

      Put ("Test 4:  ....................................");

      pragma Assert (res = Rellenar_Vector (vec, X));
      Put_Line ("Error");


   exception
       when System.Assertions.Assert_Failure =>
       Put_Line ("OK"); -- La precondicion debe fallar en este caso
   end Test_4;


begin
   Put_Line ("********************* Tests_Rellenar_Vector");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end Tests_Rellenar_Vector;
