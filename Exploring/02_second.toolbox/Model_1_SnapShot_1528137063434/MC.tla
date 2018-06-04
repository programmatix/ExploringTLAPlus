---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813706140436000 == 
DOMAIN <<"hello", "world", "!">>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813706140436000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_152813706140437000 ==
FALSE/\str = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_152813706140438000 ==
FALSE/\str' = str
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 19:31:01 BST 2018 by graha
