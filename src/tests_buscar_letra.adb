with Ada.Text_IO;       use Ada.Text_IO;
with Pkg_Buscar_Letra;        use Pkg_Buscar_Letra;
with System.Assertions;

procedure Tests_Buscar_Letra is

   procedure Test_1 is
      Str  : constant String := "Hello world";
      Value: constant Character := 'o';
      Res: Natural;
   begin
      Put ("Test_1: ................. ");

      Buscar_Letra(Str,Value,Res);

      pragma Assert (Res = 1);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Str  : constant String := "Hello world";
      Value: constant Character := 'a';
      Res: Natural;
   begin
      Put ("Test_2: ................. ");

      Buscar_Letra(Str,Value,Res);

      pragma Assert (Res = 0);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Str  : constant String := "nnnnnnnnnno";
      Value: constant Character := 'o';
      Res: Natural;
   begin
      Put ("Test_3: ................. ");

      Buscar_Letra(Str,Value,Res);

      pragma Assert (Res = 1);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Str  : constant String := "Buscamos espacio";
      Value: constant Character := ' ';
      Res: Natural;
   begin
      Put ("Test_4: ................. ");

      Buscar_Letra(Str,Value,Res);

      pragma Assert (Res = 1);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Str  : constant String := "Buscamos5";
      Value: constant Character := '5';
      Res: Natural;
   begin
      Put ("Test_5: ................. ");

      Buscar_Letra(Str,Value,Res);

      pragma Assert (Res = 1);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Str  : constant String := "";
      Value: constant Character := 'A';
      Res: Natural;
   begin
      Put ("Test_6: ................. ");

      Buscar_Letra(Str,Value,Res);

      pragma Assert (Res = 0);
      Put_Line ("Error");

   exception
       when System.Assertions.Assert_Failure =>
       Put_Line ("OK"); -- La precondicion debe fallar en este caso
   end Test_6;


begin
   Put_Line ("********************* Tests_Bescar_Letra");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
end Tests_Buscar_Letra;
