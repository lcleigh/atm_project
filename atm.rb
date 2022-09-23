#We are going to make an ATM

#As a user
#In order to get money I need to put in a PIN
#I want to acces my account securely

#As a user
#In order to be able to access MY account
#I need to be able to enter my PIN

#As a USER
#In order to no overdraw my account
#I want to be able to withdraw up to my limit

#As a User
#In order to know how much money I have
#I want to be able to see my balance

#VARIABLES GO HERE



$pin = 1234
$balance = 1000

#user input "gets"

def access(user_input)
    #ask user for pin /
    #check pin is correct
    if user_input == $pin
        return "PIN Correct"
        return true
    else
        puts "Incorrect PIN!"
        return false
    end
    #return bool
end



def view_balance(user_input)
    # If access() func is true then allow access
    if access(user_input) == true
        # do something
        return "Your balance is #{$balance}"
    # If access if false no access
    else
        return "You cannot access your balance!"
    end

end

def withdraw(user_input, amount)
    if amount <= $balance
        $balance -= amount
        return "You have withdrawn £#{amount}. Your balance is now £#{$balance}"
        
    else
        return "You do not have enough money in you account. You have £#{$balance} Please choose a different amount."
    end
end





