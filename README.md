# Mini Parsing 📜

This repository contains the **parsing module** for the **minishell** team project at 42 School.  
The parsing part is responsible for interpreting user input, handling tokens, and preparing the data for execution in the shell environment.

---

## Features ✨

- **Lexical Analysis**: Splits user input into tokens.  
- **Syntax Analysis**: Validates token sequences according to shell grammar rules.  
- **Environment Variables**: Expands environment variables (`$VAR`) correctly.  
- **Quoting Handling**: Manages both single (`'`) and double (`"`) quotes.  
- **Redirections**: Parses input/output redirections (`<`, `>`, `>>`).  
- **Pipelines**: Supports parsing of piped commands (`|`).  

---

## How It Works ⚙️

1. **Tokenization**:  
   - Splits the command into meaningful tokens like commands, options, and arguments.  

2. **Validation**:  
   - Ensures proper syntax (e.g., no unclosed quotes, invalid pipes, or misused redirections).  

3. **Expansion**:  
   - Handles shell-specific features like environment variable expansion and tilde (`~`) expansion.  

4. **Preparation**:  
   - Organizes parsed data into a structured format for the executor module.
