/* Initial beliefs and rules */
nat(z).
nat(s(X)) :- nat(X).

/* Initial goals */
!start.

/* Plans */
+!start <-
    for(nat(X)) {
        .print("value ", X);
    }.
