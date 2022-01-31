INCLUDE globals.ink

One...
Two...
Three...
Four...
Five!

That's all five herbs!
This is perfect... t-the town is finally cured.
Oh my, please, accept this as payment...
+ [Thank you. (Accept)]
~ moneyToAdd = 10
+ [I'm flattered. (Decline)]
    No it's all I can do! Take it.
    ++ [Okay, okay. (Accept)]
    ~ moneyToAdd = 10
    
- Oh! I almost forgot. -> AlcoholOffer

===AlcoholOffer===
I've got this spare medical grade alcohol.
It's all yours, if you want it.
+ [Thanks again. (Accept)]
    Pleasure...
    ~ acceptedAlcohol = true
    ++ [Goodbye. (Exit)] -> exit
+ [Not right now. (Decline)]
    You can always come back later...
    ++ [Goodbye. (Exit)] -> exit

===exit===
Farewell.
~ offeredAlcohol = true
-> END