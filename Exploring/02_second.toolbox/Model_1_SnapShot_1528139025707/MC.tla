---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813902368657000 == 
AreReversed(<<"h","e">>,<<"h","e">>)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813902368657000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_152813902368658000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 20:03:43 BST 2018 by graha
