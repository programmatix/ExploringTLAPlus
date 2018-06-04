---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813720426841000 == 
DOMAIN <<"hello", "world", "!">>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813720426841000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_152813720426842000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 19:33:24 BST 2018 by graha
