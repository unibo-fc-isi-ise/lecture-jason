count_extracted(0).

!bingo.

+!bingo : count_extracted(90) <- .print("Bingo is over").

+!bingo : count_extracted(N) & N < 90 <-
    ?extract_new(X); // test goal
    +extracted(X); -+count_extracted(N + 1);
    .print(X);
    !!bingo.

+?extract_new(X) <- .wait(1000);
    utils.rand_int(X, 1, 90);
    ?not(extracted(X)). // test goal

// retry on failed extraction
-?extract_new(X) <- ?extract_new(X). 