INCLUDE globals.ink

{not receivedReward :
Hmmm...!
So much sickness-
But no cure in sight...
}

{receivedReward && not receivedNurseQuest : -> ReceiveQuest}

{receivedNurseQuest : -> Instructions}

===ReceiveQuest===
Ahh... hello traveller.
Are you looking for a job?
+ [Yes.]
    Hmm, perfect.
    The rate of sickness in this town is growing alarmingly!
    It needs to be stopped-!
    Now, I have an idea of how we could cure it...
    But I'm so busy tending to these patients I couldn't possibly do it alone!
    Your job is simple... there's a herb I'm looking for that grows here.
    It only grows in the shade.
    To make the medecine, I need 5 of the uprooted herbs.
    Does that sound manageable?
    ++ [Sure]
        Lovely...
        See you shortly.
        ~ receivedNurseQuest = true
        +++ [Goodbye. (Exit)] -> exit
    ++ [Not right now. (Exit)] -> exit
+ [Not right now. (Exit)] -> exit

===Instructions===
There's a herb I'm looking for that grows here.
It only grows in the shade.
To make the medecine, I need 5 of the uprooted herbs.
Thank you, traveller.
+ [Thank you. (Exit)] -> exit

===exit===
Farewell.
-> END