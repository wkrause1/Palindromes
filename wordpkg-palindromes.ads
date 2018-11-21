-- This Ada package specification adds palindrome checking,
-- removal of non-letters, and transforming to upper and lower case
-- to the word package.

generic
package WordPkg.Palindromes is
    function is_Pal(w: Word) return Boolean;
end WordPkg.Palindromes;
