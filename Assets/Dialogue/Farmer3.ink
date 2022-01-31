INCLUDE globals.ink

Let's see...
Yes! That's all 10 of them, back in their pens!
Oh, thank you, thank you!
Now, let's see...
I've scraped up a bit of old cash while you were gone...
Here, take it all buckaroo!
+ [Thank you (Accept)]
~ moneyToAdd = 10
+ [You're too kind (Reject)]
    No, please!
    It's all I can offer in these trying times.
    ++ [I'm flattered (Accept)]
    ~ money += 10

- You're welcome!
Oh yes, I thought you might be interested to know..
-> Hint

===Hint===
There's a herb I found, just up on that hill behind us.
It's got great mecidinal effects, you should have a look!
Anyway, all the best. And thanks again lad!
+ [Goodbye (Exit)]
    -> Exit
+ [Could you repeat that?]
    Why yes! -> Hint
    

===Exit===
See ya round.
~receivedReward = true
-> END