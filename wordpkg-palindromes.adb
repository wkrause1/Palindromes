pragma Ada_2012;
package body WordPkg.Palindromes is
   ------------
   -- is_Pal --
   ------------

   function is_Pal (w: Word) return Boolean is
   begin
      for Offset in 0..w.Length / 2 - 1 loop
         if w.Letters (w.Letters'First + Offset) /= w.Letters (w.Length - Offset) then
            return False;
         end if;
      end loop;
      return True;
   end is_Pal;

end WordPkg.Palindromes;
