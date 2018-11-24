with WordPkg;
with WordPkg.wordops;
with WordPkg.palindromes;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure pals is

   package myword is new WordPkg(50);
   use myword;

   package ops is new myword.wordops;
   use ops;

   package pal is new myword.palindromes;
   use pal;

   possible_pal : word;
   new_word : word;
begin
   while not End_Of_File loop
    end loop;
end pals;
