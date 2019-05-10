# Simpson's-Method

## Getting Started:
This MATLABalgortihm uses Simpson's 1/3 method to solve Integration problems. This method requires an even number of intervals. If an odd number of intervals is needed the last interval with be computed with the Trapezoidal rule(The algorithm will alert you that Trapezoidal method was used). This method requires a horizontal array of x values and y, where y is integrated with respect to x. The algorithm will check that x and y are the same sized array's and x is evenly spaced.

## Inputs/Outputs
### Inputs:
x= array that conatins what y is being integrated with respect to
y= array that contains function values
### Outputs:
I= Answer after integration

## Limitations
This uses only the number of values in x -1 as the number of intervals. In the future this could be more accurate if a larger number of integrals were used.
