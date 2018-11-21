generic
package wordpkg.wordops is
   function  to_Upper(w: Word) return Word;
   procedure to_Upper(w: in out Word);

   function  remove_NonLetter(w: Word) return Word;
   procedure remove_NonLetter(w: in out Word);
end wordpkg.wordops;
