----------------------------- MODULE 02_second -----------------------------
EXTENDS TLC, Sequences, Naturals

AreReversed(str1, str2) == /\ Len(str1) = Len(str2) 
                           /\ \A x \in DOMAIN str1 : str1[x] = str2[Len(str2) - x + 1]


(* --algorithm example
variables str = <<"h","e","l","l","o">>, str_rev = str, head = 0, tail = 0, i = 0, mid = Len(str) \div 2;

begin
assert AreReversed(<<"o", "l", "l", "e", "h">>, <<"h","e","l","l","o">>);

while i < mid do
    assert ~AreReversed(str, str_rev);

    str_rev[i] := str_rev[Len(str_rev) - i];

    print i;
    print str_rev;
    print AreReversed(str, str_rev);

    i := i + 1;
end while; 
end algorithm; *)


\* BEGIN TRANSLATION
VARIABLES str, str_rev, head, tail, i, mid, pc

vars == << str, str_rev, head, tail, i, mid, pc >>

Init == (* Global variables *)
        /\ str = <<"h","e","l","l","o">>
        /\ str_rev = str
        /\ head = 0
        /\ tail = 0
        /\ i = 0
        /\ mid = (Len(str) \div 2)
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ Assert(AreReversed(<<"o", "l", "l", "e", "h">>, <<"h","e","l","l","o">>), 
                   "Failure of assertion at line 12, column 1.")
         /\ pc' = "Lbl_2"
         /\ UNCHANGED << str, str_rev, head, tail, i, mid >>

Lbl_2 == /\ pc = "Lbl_2"
         /\ IF i < mid
               THEN /\ Assert(~AreReversed(str, str_rev), 
                              "Failure of assertion at line 15, column 5.")
                    /\ str_rev' = [str_rev EXCEPT ![i] = str_rev[Len(str_rev) - i]]
                    /\ PrintT(i)
                    /\ PrintT(str_rev')
                    /\ PrintT(AreReversed(str, str_rev'))
                    /\ i' = i + 1
                    /\ pc' = "Lbl_2"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << str_rev, i >>
         /\ UNCHANGED << str, head, tail, mid >>

Next == Lbl_1 \/ Lbl_2
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Mon Jun 04 20:35:31 BST 2018 by graha
\* Created Mon Jun 04 18:55:29 BST 2018 by graha
