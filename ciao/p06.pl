isPalindrome(Xs, true) :- reverse(Xs, Sx), Xs = Sx, !. 
isPalindrome(_, false).