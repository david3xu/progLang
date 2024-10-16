generic
    type Element_Type is private;
    type Index_Type is (<>);
    type Array_Type is array (Index_Type range <>) of Element_Type;
    with function "<" (Left, Right : Element_Type) return Boolean is <>;
    with function ">" (Left, Right : Element_Type) return Boolean is <>;
package Bubble_Sort is
    procedure Sort(Items : in out Array_Type);
end Bubble_Sort;
