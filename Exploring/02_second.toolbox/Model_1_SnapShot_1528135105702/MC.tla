---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813510367727000 == 
Neq(5,3)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813510367727000>>)
----

=============================================================================
\* Modification History
\* Created Mon Jun 04 18:58:23 BST 2018 by graha
