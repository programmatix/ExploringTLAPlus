---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813515886630000 == 
Neq(4,3)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813515886630000>>)
----

=============================================================================
\* Modification History
\* Created Mon Jun 04 18:59:18 BST 2018 by graha
