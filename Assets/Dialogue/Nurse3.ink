INCLUDE globals.ink

Hello... how can I be of help?
-> Help

===Help===
+ {not acceptedAlcohol} [(Ask about alcohol)]
    Ahh.. right. Would you like to take the alcohol now?
    ++ [Yes. (Accept)] 
        Here you go.
        ~ acceptedAlcohol = true
        +++ [Thanks. (Exit)]
            Anything else?
            ->Help
    ++ [Not right now. (Decline)]
        Okay. Anything else? ->Help
+ {acceptedAlcohol} [(Ask about alcohol)]
    Ahh... yes. I'm sure someone would love this.
    Hmmm... try talking to the bartender, maybe.
    ->Exit
+ [Nothing. (Exit)]
    ->Exit

===Exit===
Farewell.
-> END