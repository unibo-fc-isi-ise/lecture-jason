turn(me).
other(pong).

!send_ping.

+!send_ping : turn(me) & other(Receiver) <-
    -+turn(other);
    !sendMessageTo(ball, Receiver).

// handle response
+ball[source(Sender)] : turn(other) & other(Sender) <-
    -+turn(me);
    -ball[source(Sender)];
    .print("Received ball from ", Sender);
    .print("Done").

+!sendMessageTo(Message, Receiver) <-
    .print("Sending ", Message, " to ", Receiver);
    .send(Receiver, tell, Message).
