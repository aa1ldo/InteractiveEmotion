INCLUDE globals.ink

VAR receivedPayment = false

Whadda ya want?
+ [Just wanted to chat.]
    {money != 30 :
    Get some more cash, and maybe we can.
    (You need 30 money to talk to the Bartender) -> END
    }
    
    {money >= 30 :
    Got a pretty fat wallet there, kid.
    You seem well off. I like it. Not many customers like you.
    For that matter, I've barely had any customers here anyway.
    Whatever, you're probably a criminal or something.
    You got anything alcoholic on you, Mr. Mafia? Any stolen goods?
    ++ [I'm not a criminal.]
        Yeah. Sure. Plenty 'round here so you fit right in, take it from me.
        +++ [I said...!] -> BartenderExplaination.calmdown
        +++ [Need help or not?] -> BartenderExplaination.calmdown
    ++ [Why?]
        Well... ->BartenderExplaination.explain
    ++ {acceptedAlcohol} [I've got this?] -> Sniff
    ++ [Uhh.. nope.]
        {acceptedAlcohol : -> Sniff}
        {not acceptedAlcohol : Hm.}
        +++ [Bye.]
            ... -> END
    }
    
+ [Bye.]
    ... -> END
    
    
===Sniff===
Wait a minute...
SNIFF...
SNIFFF...
I-is that... Isopropyl alcohol...?
+ [I'm not sure.]
+ [Isowhat now??]
- Intended for external use as an antiseptic...
...usually containing a 70% volume of absolute alcohol...
...the remainder consisting of water, denaturants and perfume oils.
A shot of that stuff would be fatal, but you know...
Desperate times call for desperate measures. We're all doomed anyway!
+ [All yours.] -> GiveAlcohol
+ [I'm keeping this...]
    Hahahahahahahahaha... right. Funny joke.
    ...
    ++ [I'm serious.]
        I'll... fight you! And I'm serious too.
        You really wanna mess with these?
        +++ [Fine, fine.]
        Phew, I hate fights. Close one. Anyway... -> Payment
        +++ [(Run)]
            Stop right there. Listen... -> Payment
    ++ [Nevermind, take it.] -> GiveAlcohol
    
===BartenderExplaination===
= calmdown
Alright, alright. Keep ya wig on, kid. Problem is, -> BartenderExplaination.explain

= explain
I'm totally out of alcohol.
Barely any 'round these parts, awful place to set up shop.
I could reaaaally do with a drink right now... ugh.
+ [Let me help.]
    {acceptedAlcohol : -> Sniff }
    {not acceptedAlcohol : Find me something strong.}
    ++ [Bye.]
        ... -> END
        

===Payment===
{not GiveAlcohol:
I'll give you a little something for your trouble.
I've got some change in my tip jar...
So, hah, anyway. About that alcohol... 
~ moneyToAdd = 10
~ receivedPayment = true
+ [Here.] -> GiveAlcohol
+ [Okay, okay.] -> GiveAlcohol
}

{GiveAlcohol :
Wait up...
Take some cash for your trouble.
+ [Thanks (Accept)]
If you want a drink with me, just shout.
Uh, catch you later. -> END
~ moneyToAdd = 10
~ receivedPayment = true
}

===GiveAlcohol===
MINE!
Sorry. Th-thanks.
PERFECT!! Finally, I can forget about all my problems...
No more dull nights cleaning these stupid pint glasses-!
++ [I'm still here...]
    Tut. Whatever, I don't need you anymore.
    Unless you want a drink with me, of course.
    +++ [See you. (Exit)]
        {receivedPayment : Uh, catch ya later. -> END}
        {not receivedPayment : -> Payment}
++ [I'll be off. (Exit)]
{receivedPayment : Uh, catch ya later. -> END}
    {not receivedPayment : -> Payment}