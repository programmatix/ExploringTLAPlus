---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813510971528000 == 
Neq(3,3)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813510971528000>>)
----

=============================================================================
\* Modification History
\* Created Mon Jun 04 18:58:29 BST 2018 by graha
