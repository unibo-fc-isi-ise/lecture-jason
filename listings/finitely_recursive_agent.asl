/* Initial beliefs and rules */

/* Initial goals */
!start(0, 10).

/* Plans */

// termination case
+!start(N, N) <- .print("hello world ", N).

// recursive case (may be selected if N < M)
+!start(N, M) : N < M <- 
	.print("hello world ", N);
	!start(N + 1, M).
	
