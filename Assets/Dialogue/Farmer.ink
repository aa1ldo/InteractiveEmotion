===start===
Oh me, oh my. What a sad, sad life.
Nothing ever goes my way...
+ [Um.. hello?]
    Ohh... h-howdy, I guess.
+ [Are you okay?]
    Not really... sob...

- Oh, woe is me.
+ [What's wrong?]
+ [What's up?]

- Well I am in a bit of a predicament, you see.
... loud sobbing ...
My poor, poor goats! All..
GONE!!!
... loud sobbing continues ...
->AskForHelp

===AskForHelp===
Please... I need your help! Now!
+ [What can I do for you?]
    Ahh... thank you... let me explain...
    -> FullExplaination
+ [I'm a little confused]
    AHHHH!! My goats have all gone missing, my boy.
    My prize winning goats...
    OUR ONLY SOURCE OF CALCIUM LEFT ON THIS CRUEL WORLD!!!!
    I don't know where they've gone!!
    -> AskForHelp
    
===FullExplaination===
Well, my boy, I need my goats back in their fences!
Some HOOLIGAN went and scared them off!
Now my little cherubs have been frightened away, and scattered about!
I need you to guide them back into the dandy fences I've repaired!
+ [How?]
    -> BriefExplaination
+ [Sounds simple enough!]
    Ah great. You're a fast learner. I like it!
    Come back when all the goats are in their pens!
    ++ [I will. (Exit)]
    -> Exit
    ++ [Wait a minute...]
        What's up?
        +++ [Can you explain further?]
        Sure. -> BriefExplaination

===BriefExplaination===
You can move goats by going near them.
They are easily scared, so approach carefully!
I just want you to guide them back into these fences!
+ [Sounds easy enough!]
    Ahh, thank you my boy!
    I feel so much better now.
    I trust you are up to this!
    Come back when all goats are back in their pens!
        ++ [I will. (Exit)] -> Exit
+ [Can you repeat that?]
    Ah, sure. It is quite a lot to take in...
    -> BriefExplaination
+ [How much will I be payed?]
    Handsomely! I'll figure it out later.
    So... how does it sound?
    ++ [Could you explain again?]
    -> BriefExplaination
    ++ [I'll do it!]
    Ahh, thank you my boy!
    I feel so much better now.
    Come back when all goats are back in their pens!
        +++ [I will. (Exit)] -> Exit

===BriefExplainationRepeated===
You can move goats by going near them.
They are easily scared, so approach carefully!
I just want you to guide them back into these fences!
Come back when all goats are back in their pens!
-> Exit

===Exit===
Goodbye.
VAR talked_to_farmer = true
-> END