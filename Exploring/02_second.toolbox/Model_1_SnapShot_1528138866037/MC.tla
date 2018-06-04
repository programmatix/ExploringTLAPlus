---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813886301551000 == 
AreReversed(<<"h","e">>, <<"h","e">>)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813886301551000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_152813886301552000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 20:01:03 BST 2018 by graha
