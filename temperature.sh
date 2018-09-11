#!/bin/bash

read -p 'Enter temperature in Fahrenheit: ' tt

if [ -z "$tt" ]
then
	echo "A temperature input is required"
	exit 
fi

bc <<_EOF_
scale=6

#first we define the function
define temp_conv(x)
{
   t=(x-32)*5/9
   return t
}
define temp_conv1(x)
{
   t=(x+459.67)*5/9
   return t
}

#testing
# then use the function to do the calculation
x=$tt
print "Temperature in degrees Celcius is ",temp_conv(x),"\n"," Temperature in Kelvin is ",temp_conv1(x),"\n"

_EOF_
