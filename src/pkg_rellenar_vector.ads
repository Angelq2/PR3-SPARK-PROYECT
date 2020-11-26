package Pkg_Rellenar_Vector with SPARK_Mode is

   type vector is array(Integer range<>) of Integer;

   function Rellenar_Vector (vec     : vector;
                             X       : Natural) return vector

   with
    Global  => null,
    Depends => (Rellenar_Vector'Result => (vec, X)),
    Pre  => vec'Length > 0
                and then
                  vec'Last < Integer'Last
                and then
                  vec'First = 1
                and then
                  (for all K in vec'First .. vec'Last =>
                         vec(K) in 1 .. 10) and then X in 1 .. 10,
   Post => (for all K in vec'First .. vec'Last =>
              Rellenar_Vector'Result(K) = 1 or Rellenar_Vector'Result(K) = -1
              or Rellenar_Vector'Result(K) = 0);

end Pkg_Rellenar_Vector;
