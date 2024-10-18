# Jacobi Method Solver

This project implements the **Jacobi Method** in MATLAB to solve a system of linear equations iteratively. The Jacobi method is widely used for solving systems where direct methods (like Gaussian elimination) may be impractical.

## Problem Description

The system of linear equations being solved in this script is as follows:

1. \( (24 - x2 - x3) / 10 = x1 \)
2. \( (21 + x1 - x3) / 10 = x2 \)
3. \( (300 - x1 + 2 * x2) / 100 = x3 \)

The initial values of all variables \(x1\), \(x2\), and \(x3\) are set to zero, and the iteration continues until the absolute error for each variable is less than the threshold (in this case, 0.05).

## How the Jacobi Method Works

The Jacobi method iteratively updates each variable based on the other variables' current values. At each step, the new value of each variable is calculated, and the difference between the new and old values (the error) is checked. When all errors are less than a predefined threshold, the iteration stops, and the solution is considered converged.

## Usage

1. Clone this repository or download the `jacobi_method_solver.m` file.
2. Open the file in MATLAB.
3. Run the script to solve the system of equations.
4. The results, including the final values of \(x1\), \(x2\), \(x3\), and the error values for each iteration, will be displayed in the MATLAB command window.

## Output

The script outputs:
- Final values of \(x1\), \(x2\), and \(x3\) after convergence.
- The error at each iteration.
- The total number of iterations required to reach convergence.

## License

This project is licensed under the MIT License.
