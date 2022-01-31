INCLUDE globals.ink

Ah! Greetings.
-> introduction

===introduction===
...
+ {request} [I'm ready.]
    -> request
* [Who are you?]
    -> greeting
* [The Bell Boy sent me...]
    -> main
+ [Nevermind. (Exit)]
    -> Leave

===greeting===
I am the Mayor of this humble town!
I'm in charge of everything, from management, to prison duty.
->introduction

===main===
Ah, yes! He did. I hear you are a surface traveller.
+ [I am!]
+ [That is correct]

- Good good. We don't permit aliens into our humble town, as you know.
+ [I have heard, yes]
+ [Well, now I do]

-If you don't mind me asking, 'surface traveller', you must be here for some reason, hoho!
We don't attract tourists that often. So why, exactly, are you here?
+ [I'm here to... save you?]
    Ah! Now that reminds me...
    ++ [What?]
    ++ [What??]
+ [Well...]
    You don't know? All fine, hoho! In fact...
    ++ [What?]
    ++ [What??]
    
-I've noticed you're... definitely on the strong side...
Those muscles are... quite something... ahem.
Would you mind maybe... doing us a favour?
+ [Yes?]
+ [I'm not sure]
- I think I owe you a better explaination. 
--> Explaination

===Explaination===
Would you like to hear my explaination?
+ [Yes, please]
    -> Monologue
+ [I've heard it already.]
    Alright, well..
    -> request

===Monologue===
Let's just say life on the surface isn't a five star experience. Those aliens you've heard us talking about made life a living hell from the start.
Well, almost the start. You see, we used to live in perfect harmony, us and... the aliens.
We all had wings, but some felt that wings were a privilige.
That not all of us were... "good enough".
So, we were picked on; we got ignored, poked fun at, mocked, berated...
Slowly we had all sorts of things taken away from us...
Little things at first, like our votes, freedom of speech, civil rights...
So we had an uprising.
It lasted for 27 days and 18 hours, until...
Suddenly... we were falling...
... and everything went dark.

// Inclusion of the poem here:
The aliens had stolen all the bright shadows.
All the aliens with their wings perched in the star filled sky, leaving our empty souls searching...
... for life at the bottom of this dissolving world of darkness.

And so, here we are. Survivors and ancestors of the Fall. Wingless, stranded and ridden with poverty.
-> request

===request===
I want to make a request of you.
+ [Could you give me a second?]
    Sure.
    -> introduction
+ [Let's hear it.] -> requestExplaination

===requestExplaination===
I was wondering if you could help us.
You seem to have nothing else but travelling to do, so I just thought-
++ [How can I help?]
    This town is a total mess!
    Overrun with goats...
    Not enough medecine for the sick...
    No more alcohol to keep everyone happy...
    And crime... everywhere!
    There's so much going on, we cant keep track of it!
    So this is where you come in...
    +++ [I can do it] ->accept
    +++ [Hmmm...] ->NotSure

===NotSure===
Oh, well. We would be very grateful for any help you offer...
    +++ [Okay, you've convinced me!]
    ->accept
    +++ [I'm still not sure]
        That's a shame. Why not?
        ++++ [I guess I could help...]
        ->accept
        ++++ [I don't want to get involved...]
            N/0.,E3XCU)S33S,,/.
            +++++ [I'm selfish.]
                WE KNOW.
                ->accept
            +++++ [I'm selfish.]
                WE KNOW.
                ->accept

===accept===
Oh that is lovely, hoho! You have my gratitude!
Thank you, traveller. We are indebted to you.
+ [You're welcome]
    My pleasure!
    -> repeat
+ [Where do I start?]
    -> repeat

===repeat===
I heard the Farmer could do with some help if you aren't sure what to do.
His farmhouse is in a South-easterly direction from here!
Good luck.
 + [Thank you (Exit)]
    --> Leave
 + [Could you repeat that?]
    Sure!
    --> repeat

===Leave===
Goodbye.

~ talkedToMayor = true

-> END