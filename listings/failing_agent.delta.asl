-!gamble : failures(N) & max_failures(M) <-
    -+failures(N + 1);
    if (N < M) {
        !gamble
    }.