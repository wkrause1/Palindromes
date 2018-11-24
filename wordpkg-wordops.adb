pragma Ada_2012;
with Ada.Characters.Handling; use Ada.Characters.Handling;
package body wordpkg.wordops is

   --------------
   -- to_Upper --
   --------------

   function to_Upper (w: Word) return Word is
      upper_word: Word;
   begin
      upper_word:= w;
      upper_word.Letters := Ada.Characters.Handling.To_Upper(upper_word.Letters);
      return upper_word;
   end to_Upper;

   --------------
   -- to_Upper --
   --------------

   procedure to_Upper (w: in out Word) is
   begin
      w.Letters := Ada.Characters.Handling.To_Upper(w.Letters);
   end to_Upper;

   ----------------------
   -- remove_NonLetter --
   ----------------------

   function remove_NonLetter (w: Word) return Word is
      nonletter_word : Word;
      counter: Natural := 1;
   begin
      for I in 1..w.Length loop
         if Is_Letter(w.Letters(I)) then
            nonletter_word.Letters(counter) := w.Letters(I);
            counter := counter + 1;
         end if;
      end loop;
      nonletter_word.Length := counter - 1;
      return nonletter_word;
   end remove_NonLetter;

   ----------------------
   -- remove_NonLetter --
   ----------------------

   procedure remove_NonLetter (w: in out Word) is
      counter: Natural := 1;
      new_string: String(1..w.Length);
   begin
      for I in 1..w.Length loop
         if Is_Letter(w.Letters(I)) then
            new_string(counter) := w.Letters(I);
            counter := counter + 1;
         end if;
      end loop;
      w.Letters := new_string;
      w.Length := counter - 1;
   end remove_NonLetter;

end wordpkg.wordops;
