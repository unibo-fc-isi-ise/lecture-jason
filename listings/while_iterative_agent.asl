/* Initial beliefs and rules */
count(0).

/* Initial goals */
!start.

/* Plans */
+!start <-
	while(count(X) & X >= 0) { // as long as X >= 0...
        .print("value ", X); // print X
        -+count(X + 1) // atomic update to increase X
	}.