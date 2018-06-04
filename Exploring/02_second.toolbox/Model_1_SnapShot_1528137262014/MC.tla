---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813725899143000 == 
DOMAIN <<"hello", "world", "!">>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813725899143000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_152813725899144000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 19:34:18 BST 2018 by graha
