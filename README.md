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

- `==`.
- `~=`: the same of `!=`.
- `<`, `>`, `<=`, `>=`.
- `~`: logical not.
- `&`.
- `|`.
- `xor`.
- `'`: transpose a matrix.
- `+`, `-`, `*`, `/`.
- `.<op>`: where `<op>` could be `+`, `-`, `*` or `/`; it execute that operation element wise.

## Strings

`'it is a string'`

## Built-in constants

- `pi`.
- `i`, `j`: imaginary unit.
- `Inf`: infinite (1/0).
- `NaN`: not a number (0/0).
- `eps`: machine precision.
- `realmax`, `realmin`.

## Use files

Inside the current working directory create a file with the `.m` extension. You can use that file as matlab script simply calling it into the terminal (you can omit the extension when calling):

```shell
<file_name>
```

## Functions

`function [output_params]=function_name(input_params)`: output_params and input_params are two comma separated variable lists. 

## Commonly used commands

### I/O

- `input('string')`: it print 'string' and wait for keyboard input.
- `fprintf('string and/or formats', output list)`: it print a sequence of chars, substituiting special symbols with output list content. \
  E.g. of formats: 
  - `%g`: fixed/floating point.
  - `%e`: exponential.
  - `%s`: string.
- `open <file_name>`: it opens a file.
  
### Matrix

- `eye(n)`: identical matrix n x n.
- `zeros(m,n)`, `ones(m,n)`: m x n matrix filled respectively with 0 and 1.
- `size(x)`: it compute size of array x.
- `length(v)`: it compute component number of vector v.
- `diag(M)`: it produces a vector containing diagonal of M.
- `diag(v)`: it produces a square matrix with v as diagonal and 0 otherwise.
- `tril(M,i)`, `triu(M,i)`: it extract from M all elements respectively below and above diagonal with index i (default i=0), including the diagonal itself.
- `sum(M)`, `prod(M)`: it compute respectively the sum and the product vector of elements of each M column.

### Plots

- `plot(x,y,'<options>')`: it plots polyline which connects dots of two given linear spaces x and y. It is possible to provide some options.
- `plot3(x,y,z,'<options>')`: 3D plot.
- `hold on`: it keeps on the previously plotted graphic.
- `hold off`: it disable `hold on`.
- `figure`: opens a graphical window.
- `subplot`: it divides a graphical window in two or more graphical areas. `subplot(n,m,p)` divides the window in n x m graphical areas and next plot will modify p-th area.
- `title('string')`: assign a title to the graphic.
- `xlabel('string')`, `ylabel('string')`: assign a label to axis.
- `legend('string1', 'string2', ...)`: creates a legend.
- `axis([xmin,xmax,ymin,ymax])`: fix extremes of graphic.
- `semilogy`, `semilogx`: sets axis in logarithmic scale.
- `loglog`: sets all axis in logarithmic scale.
- `meshgrid(x,y)`: creates a 2D surface .
- `mesh(x,y,z)`: creates a 3D surface with colored lines.
- `surf(x,y,z)`: the same of mesh, but it colors also faces.
- `view(angle, height)`: specifies the inizial point of view fo the graphic (default = -37.5, 30).
- `colorbar`: it shows the colorbar on the side.
- `colormap('<name>')`: it defines the color mapping (default = 'Jet').
- `contour(x,y,z,v)`: displays level curves. `v` is optional, it gives the possibility to specify which levels to print.
- `imread`, `imshow`, `imwrite`: respectively reads image from a file, visualizes an image and saves an image.