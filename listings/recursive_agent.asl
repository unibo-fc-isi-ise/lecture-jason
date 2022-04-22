/* Initial beliefs and rules */

/* Initial goals */
!start(0).

/* Plans */
+!start(N) <- 
    .print("hello world ", N);
    !start(N + 1).