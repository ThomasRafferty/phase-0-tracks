# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
"zom".insert(2, 'o')
# "zom".<???>
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".<< " suspects"
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"


"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
#Note: The (" ") is not needed for this example, ".squeeze" would also have worked.  This is because there are no instances of sequentially repeated letters, yet if "boom!" were to be included in the string then the second "o" would be removed, squeezing it to "bom!".

"z".getbyte(0)
"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# The number 122 is the ASCII code for lowercase "z".  ASCII is the abbreviation from American Standard Code of Information Interchange.  ASCII is a encoding standard which allows for text can be communicated across all sorts of different devices and systems.

"How many times does the letter 'a' appear in this string?".count "a"
# => 4