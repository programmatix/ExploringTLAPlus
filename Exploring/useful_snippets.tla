-------------------------- MODULE useful_snippets --------------------------

(*
EXTENDS Naturals, TLC
 
print <<u, v>>;

while (u /= 0) {
  if (u < v) {
    u := v || v := u
  };
  u := u - v
} 


gcd(x,y) == CHOOSE i \in 1..x:
                   /\ x % i = 0
                   /\ y % i = 0
                   /\ \A j \in 1..x: /\ x % j = 0
                                     /\ y % j = 0
                                     => i >= j



*)

(*
--algorithm Binsearch {
variables t \in [ 1..N -> 0..MAXINT ];  (* Array of N integers in 0..MAXINT *)
          x \in 0..MAXINT;              (* Value to find *)
          found = FALSE;
          l = 1;                        (* All elements to the left of l are < x *)
          r = N;                        (* All elements to the right of r are > x *)
          p = 1;                        (* Pivot *)

(* Main *)
{     
    print <<t, x>>;
        
    while ((l <= r) /\ (~ found)) {
        p := (l + r) \div 2;
          
        if (t[p] = x)
            found := TRUE
        else if (t[p] < x)
            l := p-1
        else (* t[p] > x *)
            r := p+1
    };
        
    assert( found <=> (\E j \in 1..N : t[j] = x) )      
}

}
*)

=============================================================================
\* Modification History
\* Last modified Mon Jun 04 19:45:14 BST 2018 by graha
\* Created Mon Jun 04 19:42:06 BST 2018 by graha
