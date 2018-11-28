pragma Ada_2012;
package body WordPkg.Palindromes is
   ------------
   -- is_Pal --
   ------------

   function is_Pal (w: Word) return Boolean is
   begin
      for offset in 0..w.Length / 2 - 1 loop
         if w.Letters (w.Letters'First + offset) /= w.Letters (w.Length - offset) then
            return False;
         end if;
      end loop;
      return True;
   end is_Pal;

end WordPkg.Palindromes;
