/* Initial beliefs and rules */
max_failures(3).
failures(0).

/* Initial goals */
!gamble.

/* Plans */
+!gamble <-
    // internal action extracting a random double in [0,1[
    .random(Coin); 
    if (Coin >= 0.5) {
        !gamble
    } else {
        .fail // internal action making the current plan fail
    }.