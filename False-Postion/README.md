# False Positon

## Getting Started:
This MATLAB algoithm uses the False Position method to determine the root of a function. 
This is a bracketing method and requires 2 guesses that brackets the root (one on each side of the root)
The user is able to assign a desired relative error and/or wanted number of iterations (if not assigned the program has default values).
Because of this the user must put in the first 3 inputs but the remaining 4th and 5th are optional.


## Inputs/Outputs:
### Inputs:
func:function
<br /> xl:lower guess
<br /> xu: upper guess
<br /> es:desired relative error (default: 0.0001%) (*Optional*)
<br /> maxiter: # of iterations desired (default: 200) (*Optional*)
### Outputs:
root: root of function
<br /> fx:function evaluated at root location
<br /> ea: approximate relative error %
<br /> iter: how many iterations performed

## Limtations:
This algorithm is dependant on the user to assign the relative error so the accuracy can be changed dependant on the situation needed. 
One potential issue is that the user is required to set the lower and upper guess which can make the number of iterations needed vary
depending on how good the guess it. It also can't tell you all the roots of a function just the root between the lower and upper bracketing guesses.
