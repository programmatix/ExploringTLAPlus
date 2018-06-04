---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813885165449000 == 
AreReversed(<<"h","e">>, <<"e","h">>)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813885165449000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_152813885165450000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 20:00:51 BST 2018 by graha
