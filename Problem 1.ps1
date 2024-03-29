# Learning Powershell - Project 1
# Spenser Reinhardt / commiebstrd

# As you should well know, powershell is a windows scripting language. You can do simple tasks from reading, writing, and moving files, to complex actions against Exchange and Active Directory.
# We're going to start with some basics and move on to more difficult tasks later.

# A few key items before we begin.

# Comment lines start with a # symbol. These may be at the end of a line of code or on thier own line, they will only make text for that character on a comment. By default they are colored green.
Write-Output "output here" # Functions you have defined or that are built into the system have a blue color, like the one at the beginning of this line. Anything after a function call is considered an argument for that function.
                           # They are only separated by spaces, and individual arguments with spaces must be enclosed in single or double quotes. You may also call a function as an argument of a function, but we will save that for later.
$variable = "data here"    # Variables are used to store data and values. When created and used, they will always start with a dollar sign, and be followed by an equals sign and what you wish to store in it. By default have an orange\red color.
"" & ''                    # Strings and other text data is always enclosed in single or double quotes. These should not be confused with numbers which will not have quotes and should not be compared against each other, as 5 and "5" are not equal.
                           # If you need one quote or the other in your string, you MUST use the alternative quote to enclose it. Such as "This Spenser's string"
=                          # Single and double equals are also different. A single equals sign sets something as equal to something else such as the variable line now equals "data here". Operators will generally be dark blue.
== & -eq                   # However == is a comparison operator and will only check if things are equal to one another, such as 5 == 5 is true. -eq is also a comparison operator, generally they can be interchanged without issue.
$True & $False             # Powershell also has the idea of booleans or true and false. When your program\script is deciding how to continue, it will use these boolean values to determin operation, 
                           # even when checking if 5 = 5, the end result to powershell is $True.
> >> | << <                # These are redirection operators. You can use them to direct the output of one item into another item or function. Generally they will be used to forward a functions output into another function or loop.
                           # While not very powershell-ish, you can use them to write out to a file or other location with something like "write-output "Output here" > c:\test.txt 

# To start, we're going to work with functions. Think of a function as a self-built tool, that you can create, reuse and mold to the task at hand.
# They can do simple tasks from figuring out how many lines are in a file, or tricky things like modifying sql databases.
# A function starts with the keyword "Function" followed by the name of the function as you would like to call it, and two squigly braces.
 
Function I-am-a-function { # Code goes in here }
 
# Inside of this function's squigly brackets, you will add other code, that performs the steps you wish to use each time it is called. 
# As you can see above, different key words and symbols will have different highlighting. These can be changed to suite you best, if needed.
# Because we have defined the I-am-a-function function above, it could now be called just by writing it's name such as.

I-am-a-function

# This function doesn't do anything presently, as there is nothing defined for it to do. Let's make a new one that does simple addition.

Function Add-Me {                       # Declaration of the function and it's name.
    Param ( $argument1, $argument2 )    # Accept arguments with Param(), as defined like this $argument1 and $argument2 may be strings, integers, or any other datatypes of which there are many.
    $result = $argument1 + $argument2   # Here we compute the result of $argument1 plus $argument2 and store the value into $result.
    Return $result                      # This uses the keyword Return, to signal exiting the function and returning the value in $result to the location that called Add-Me
}                                       # Closing of the function, remeber to set the bracket at the same indent level as the F of function for easier readability, it does not matter to powershell.

# That should be all you need to complete problem 1, and get you started on the basics of powershell.
 