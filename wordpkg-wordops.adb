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
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "remove_NonLetter unimplemented");
      return raise Program_Error with "Unimplemented function remove_NonLetter";
   end remove_NonLetter;

   ----------------------
   -- remove_NonLetter --
   ----------------------

   procedure remove_NonLetter (w: in out Word) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "remove_NonLetter unimplemented");
      raise Program_Error with "Unimplemented procedure remove_NonLetter";
   end remove_NonLetter;

end wordpkg.wordops;
