turn(me).
other(pong).

!ping_pong.

+!ping_pong <-
    !send_ping;
    !receive_pong.

+!send_ping : turn(me) & other(Receiver) <-
    -+turn(other);
    !sendMessageTo(ball, Receiver).

+!receive_pong : turn(other) & other(Sender) <-
    .wait({ +ball[source(Sender)] });
    -+turn(me);
    .print("Received ball from ", Sender);
    .print("Done").

+!sendMessageTo(Message, Receiver) <-
    .print("Sending ", Message, " to ", Receiver);
    .send(Receiver, tell, Message).
