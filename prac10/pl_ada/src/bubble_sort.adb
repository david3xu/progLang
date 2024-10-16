package body Bubble_Sort is
    procedure Sort(Items : in out Array_Type) is
        Temp : Element_Type;
        Swapped : Boolean;
    begin
        for I in Items'First .. Index_Type'Pred(Items'Last) loop
            Swapped := False;
            for J in reverse Index_Type'Succ(I) .. Items'Last loop
                if Items(Index_Type'Pred(J)) > Items(J) then
                    Temp := Items(Index_Type'Pred(J));
                    Items(Index_Type'Pred(J)) := Items(J);
                    Items(J) := Temp;
                    Swapped := True;
                end if;
            end loop;
            exit when not Swapped;
        end loop;
    end Sort;
end Bubble_Sort;