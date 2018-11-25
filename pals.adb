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

    procedure print_as_is (w:word) is
    begin
        put("String: ");
        put(w);
        new_line;
        put("Status: ");
        put_line("Palindrome as is");
    end print_as_is;

    procedure print_remove_non (w, r: word) is
    begin
        put("String: ");
        put(w);
        new_line;
        put("Status: ");
        put_line("Palindrome when non-letters are removed.");
        put("Palindrome String: ");
        put(r);
        new_line;
    end print_remove_non;

    procedure print_upper(w,r: word) is
    begin
        put("String: ");
        put(w);
        new_line;
        put("Put: ");
        put_line("Palindrome when converted to upper case");
        put("Palindrome String: ");
        put(r);
        new_line;
    end print_upper;

    procedure print_upper_remove_non (w,r: word) is
    begin
        put("String: ");
        put(w);
        new_line;
        put("Status: ");
        put_line("Palindrome when converted to upper case and non-letters are removed");
        put("Palindrome String: ");
        put(r);
        new_line;
    end print_upper_remove_non;

    procedure print_non_palindrome (w:word) is
    begin
        put("String: ");
        put(w);
        new_line;
        put("Status: ");
        put_line("Never a palindrome");
    end print_non_palindrome;

   possible_pal : word;
   remove_noletter : word;
   upper_case : word;
   non_letter_and_upper : word;
begin
   while not End_Of_File loop
        get(possible_pal);
        remove_noletter := remove_nonletter(possible_pal);
        upper_case := to_upper(possible_pal);
        non_letter_and_upper := remove_nonletter(upper_case);
        if is_pal(possible_pal) then
           print_as_is(possible_pal);
        elsif is_pal(remove_noletter) then
            print_remove_non(possible_pal, remove_noletter);
        elsif is_pal(upper_case) then
            print_upper(possible_pal, upper_case);
        elsif is_pal(non_letter_and_upper) then
            print_upper_remove_non(possible_pal, non_letter_and_upper);
        else
           print_non_palindrome(possible_pal);
        end if;
        new_line;
    end loop;
    exception
        when WordTooLong => 
            put_line("Sorry, word length was longer than allowed. Please shorten word and try again.");
end pals;
