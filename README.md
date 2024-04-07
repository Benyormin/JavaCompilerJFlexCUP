# JavaCompilerJFlexCUP
Java Compiler with Lexical Analysis and Parsing using JFlex and CUP

# Java Compiler with Lexical Analysis and Parsing

This repository contains a Java compiler project developed as part of a university assignment. The project consists of two phases: lexical analysis and parsing. In the first phase, a lexical analyzer is implemented to tokenize input source code. In the second phase, a parser is implemented to analyze the structure of the tokenized code.

## Phase One: Lexical Analysis

In the lexical analysis phase, the following features are implemented:

- **Case Insensitivity**: The lexical analyzer is case insensitive.
- **Tokenization of Numbers**: Float numbers, integers, positive and negative numbers are correctly tokenized.
- **Reserved Words**: Three reserved words are recognized: `println`, `Inumber`, `CLEAR`.
- **Whitespace Detection**: White spaces are identified and handled appropriately.
- **Regular Operators**: Common arithmetic operators (`+`, `-`, `*`, `/`, etc.) are recognized.
- **Increment and Decrement Operators**: The `++` and `--` operators are identified.
- **Exponentiation**: The `**` operator is recognized as exponentiation.
- **Comments**: Comments, keywords and identifiers are treated similar to Java .

## Phase Two: Parsing

In the parsing phase, a parser is implemented using CUP. The following constructs are identified:

- **Variable Initialization**: Variables of types such as `int`, `float`, etc., are properly initialized.
- **Control Flow Statements**: Control flow statements including `if`, `else`, `switch`, etc., are identified.
- **Functions**: Function definitions and calls are parsed.
- **println() Function**: The `println()` function is recognized as a reserved function. For example, `println("hello")` should print "hello" in the terminal.
- **CLEAR(t) Function**: The `CLEAR(t)` function clears the terminal after `t` milliseconds.
- **SQRT Function**: The `SQRT` function calculates the square root of an integer number.

## Usage

To use the compiler, follow these steps:

1. Clone this repository to your local machine.
2. Run acording to instructions that are mentioned in the report file

## License

This project is licensed under the [MIT License](LICENSE).

