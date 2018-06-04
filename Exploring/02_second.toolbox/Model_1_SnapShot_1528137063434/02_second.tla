----------------------------- MODULE 02_second -----------------------------
EXTENDS TLC, Sequences

(* --algorithm example
variables str = <<"h","e">>;
begin
while TRUE do
        assert str /= <<"e","h">>;
        str := Append(Tail(str), Head(str));
end while; 
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLE str

vars == << str >>

Init == (* Global variables *)
        /\ str = <<"h","e">>

Next == /\ Assert(str /= <<"e","h">>, 
                  "Failure of assertion at line 8, column 9.")
        /\ str' = Append(Tail(str), Head(str))

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Mon Jun 04 19:30:53 BST 2018 by graha
\* Created Mon Jun 04 18:55:29 BST 2018 by graha
