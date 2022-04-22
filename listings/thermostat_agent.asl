target(20).

+temperature(X) <- !regulate_temperature(X).

+!regulate_temperature(X) : target(Y) & X - Y > 0.5 <-
    spray_air(cold).

+!regulate_temperature(X) : target(Y) & Y - X > 0.5 <-
    spray_air(hot).

+!regulate_temperature(X) 
    : target(Y) & Z = X - Y & Z >= -0.5 & Z <= 0.5 
    <- true.

-!regulate_temperature(X) <-
    !regulate_temperature(X).
