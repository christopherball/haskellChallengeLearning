# haskellChallengeLearning
This repository serves as a personal playground for learning Haskell functional programming through online challenges, such as Project Euler.

                       Input
                       Params   Output
            Typeclass   /‾‾\    Param  
               /\      /    \    /‾‾\
       (==) :: Eq a => a -> a -> Bool
       \  /  |\   /        \_/       |
        \/   | \_/         Type      |
     Function| Class     Variable    |
       Name  |Constraint             |
             \_______________________/
                         |      
                        Type

    Read: “The equality function takes any two values that are 
    of the same type and returns a Bool. The type of those two 
    values must be a member of the Eq typeclass.”

****Useful Commands*

To install library packages from hackage.haskell.org, use:
cabal install --lib packageName
