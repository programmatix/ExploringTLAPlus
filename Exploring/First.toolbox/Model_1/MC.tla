---- MODULE MC ----
EXTENDS 01_first, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813474865523000 == 
IsEqual(x,y) == x = y
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813474865523000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_152813474865524000 ==
FALSE/\x = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_152813474865525000 ==
FALSE/\x' = x
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 18:52:28 BST 2018 by graha
