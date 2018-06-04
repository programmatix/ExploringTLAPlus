----------------------------- MODULE 02_second -----------------------------
EXTENDS TLC, Sequences, Naturals

AreReversed(str1, str2) == /\ Len(str1) = Len(str2) 
                           /\ \A x \in DOMAIN str1 : str1[x] = str2[Len(str2) - x + 1]


(* --algorithm example
variables str = <<"h","e","l">>, str_rev = str;


begin
while TRUE do
    assert ~AreReversed(str, str_rev);
        \* assert str /= <<"e","h">>;
        str_rev := Append(Tail(str), Head(str));
end while; 
end algorithm; *)


\* BEGIN TRANSLATION
VARIABLES str, str_rev

vars == << str, str_rev >>

Init == (* Global variables *)
        /\ str = <<"h","e","l">>
        /\ str_rev = str

Next == /\ Assert(~AreReversed(str, str_rev), 
                  "Failure of assertion at line 14, column 5.")
        /\ str_rev' = Append(Tail(str), Head(str))
        /\ str' = str

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Mon Jun 04 20:07:50 BST 2018 by graha
\* Created Mon Jun 04 18:55:29 BST 2018 by graha
