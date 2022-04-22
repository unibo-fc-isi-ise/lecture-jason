/* Initial goals */
!count(1, 10).

/* Plans */
+!count(N, N) <- .print("count ", N, ", end").

+!count(N, M) : N < M <-
    .print("count ", N);
    // spawn new intention when N is 7
    if (N = 7) { !!count(1, M) };
    !count(N + 1, M).