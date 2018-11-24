with WordPkg;
with WordPkg.wordops;
with WordPkg.Palindromes;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure pals is

   package myword is new WordPkg(50);
   use myword;

   package ops is new myword.wordops;
   use ops;

   possible_pal : word;
begin
   while not End_Of_File loop
      get(possible_pal);
      remove_NonLetter(possible_pal);
      put(possible_pal);
   end loop;
end pals;
