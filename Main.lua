local Done = false -- Declare a variable that determines whether the user is done with the program or not.

while not Done do -- Enter a while loop that runs until Done is no longer false.

    print("Guess a Random Number") -- Print the title of the program.
    print("=====================") -- Print a bunch of equals signs that act as a separator.
    print("1) Play") -- Print the first option, which is to play the game.
    print("2) Exit") -- Print the second option, which is to exit the program.
    print("Please enter a number:") -- Print a prompt that asks the user for a number.
    local UserInput = io.read() -- Read the users input and store it inside of UserInput.

    if UserInput == "1" then -- If the user has input 1.
        
        local Guesses = 0 -- Create a variable that stores the number of times that the user has guessed.
        local Number = tostring(math.random(1,20)) -- Create a variable that stores a randon number between 1 and 20, converted to a string.
        local Guessed = false -- Create a variable that determines whether the user has guessed the number or not.

        while not Guessed do -- Enter a while loop that runs until Guessed is no longer false.
            
            print("Guess the Number: ") -- Print a prompt that asks the user to guess the number.
            UserInput = io.read() -- Read the users guess and store it inside of UserInput.

            if tonumber(UserInput) == nil then -- If the input cannot be converted to a number.

                print("That is not a number, guess again.") -- Print that the Users Input is not a number.
                Guesses = Guesses + 1 -- Add one to guesses.

            elseif UserInput == Number then -- If the users guess is equal to the randomly generated number.
                
                print("You have guessed right!") -- Print a congratulations message, as the user has guessed correctly.
                print("The number was " .. Number) -- Print the randomly generated number.
                print("It took you " .. tostring(Guesses) .. " tries to guess the number!") -- Print the amount of times that the user guessed.
                Guessed = true -- Set guessed to true.

            elseif string.upper(UserInput) == "EXIT" then -- If the user has entered "exit".

                print("You failed to guess the number.") -- Print a failed message, as the user has given up.
                print("The number was " .. Number) -- Print the randomly generated number.
                print("You guessed " .. tostring(Guesses) .. " times before giving up.") -- Print the amount of times that the user guessed before giving up.
                Guessed = true -- Set guessed to true.

            else -- In any other case.

                print("That's the wrong number, try again.") -- Print that the user guessed the number wrong.
                Guesses = Guesses + 1 -- Add 1 to the guessed.

            end -- End of if statement.

        end -- End of while loop.

    elseif UserInput == "2" then -- If the user has selected 2.

        Done = true -- Set done to true.

    else -- In any other case.

        print("That's an invalid input.") -- Print an invalid input message.

    end -- End of if statement.

end -- End of while loop.