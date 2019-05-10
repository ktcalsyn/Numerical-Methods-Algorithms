# LU Factorization

## Getting Started
This algorithm uses LU Factorization with partial pivoting. 
Partial pivoting uses pivoting of the whole row instead of just the value as with typical pivoting.
The result with give a Lower and Upper Triangular matrix as well as the pivot matrix (desribes what pivoting was done)

## Inputs and Outputs
### Inputs
A=coefficient matrix
### Outputs
L=lower triangular matrix
<br /> U=upper triangular matrix
<br /> P=pivot matrix

## Limitations
This algorithm only finds the L and U matrix and pivot matrix. 
If the use wants to solve a linear algebra problem the L and U can be used but more calculations would be needed to find the solution.
