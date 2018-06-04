---- MODULE MC ----
EXTENDS 02_second, TLC

\* Constant expression definition @modelExpressionEval
const_expr_152813900704855000 == 
AreReversed(<<"h","e">>,<<"e","h">>)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_152813900704855000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_152813900704856000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Jun 04 20:03:27 BST 2018 by graha
