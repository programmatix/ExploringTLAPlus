---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813889385053000 == 
DOMAIN <<"h","e">>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813889385053000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_152813889385054000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 20:01:33 BST 2018 by graha
