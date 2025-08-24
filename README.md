# Reference <!-- omit from toc -->
- [Need help about a function?](#need-help-about-a-function)
- [Operators](#operators)
- [Strings](#strings)
- [Built-in constants](#built-in-constants)
- [Use files](#use-files)
- [Functions](#functions)
- [Commonly used commands](#commonly-used-commands)
  - [I/O](#io)
  - [Matrix](#matrix)
  - [Plots](#plots)

## Need help about a function?

```shell
help <function_name>
```

## Operators

- `==`
- `~=`: the same of `!=`
- `<`, `>`, `<=`, `>=`
- `~`: logical not
- `&`
- `|`
- `xor`
- `'`: transpose a matrix
- `+`, `-`, `*`, `/`
- `.<op>`: where `<op>` could be `+`, `-`, `*` or `/`; it execute that operation element wise

## Strings

`'it is a string'`

## Built-in constants

- `pi`
- `i`, `j`: imaginary unit
- `Inf`: infinite (1/0)
- `NaN`: not a number (0/0)
- `eps`: machine precision
- `realmax`, `realmin`

## Use files

Inside the current working directory create a file with the `.m` extension. You can use that file as matlab script simply calling it into the terminal (you can omit the extension when calling):

```shell
<file_name>
```

## Functions

`function [output_params]=function_name(input_params)`: output_params and input_params are two comma separated variable lists. 

## Commonly used commands

### I/O

- `input('string')`: it print 'string' and wait for keyboard input
- `fprintf('string and/or formats', output list)`: it print a sequence of chars, substituiting special symbols with output list content. \
  E.g. of formats: 
  - `%g`: fixed/floating point
  - `%e`: exponential
  - `%s`: string
- `open <file_name>`: it opens a file
  
### Matrix

- `eye(n)`: identical matrix n x n
- `zeros(m,n)`, `ones(m,n)`: m x n matrix filled respectively with 0 and 1
- `size(x)`: it compute size of array x
- `length(v)`: it compute component number of vector v
- `diag(M)`: it produces a vector containing diagonal of M
- `diag(v)`: it produces a square matrix with v as diagonal and 0 otherwise
- `tril(M,i)`, `triu(M,i)`: it extract from M all elements respectively below and above diagonal with index i (default i=0), including the diagonal itself
- `sum(M)`, `prod(M)`: it compute respectively the sum and the product vector of elements of each M column

### Plots

- ``: