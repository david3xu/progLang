with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Bubble_Sort;

procedure Main is
   type Int_Array is array (Positive range <>) of Integer;
   
   package Int_Bubble_Sort is new Bubble_Sort(Element_Type => Integer,
                                              Index_Type => Positive,
                                              Array_Type => Int_Array);

   procedure Print_Array (Arr : Int_Array) is
   begin
      for I in Arr'Range loop
         Put(Arr(I), Width => 4);
      end loop;
      New_Line;
   end Print_Array;

   Test_Array : Int_Array := (5, 2, 8, 1, 9, 3, 7, 6, 4);
begin
   Put_Line("Original array:");
   Print_Array(Test_Array);

   Int_Bubble_Sort.Sort(Test_Array);

   Put_Line("Sorted array:");
   Print_Array(Test_Array);
end Main;