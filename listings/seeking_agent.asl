found(0).

!seek_others.

+!seek_others <-
    .broadcast(askOne, whosThere(_));
    .wait(found(3)); // wait for found(3) to become true
    .print("I found you all!").

// response handling plan
+whosThere(_)[source(Sender)] : found(X) <-
    -+found(X + 1);
    .print("I found you, ", Sender, "!").
