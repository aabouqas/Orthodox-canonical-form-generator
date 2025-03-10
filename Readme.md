# Orthodox-canonical-form-generator

## Overview
The `mc` script automates the creation of C++ header files (`.hpp`). It scans the current directory for `.hpp` files and checks if they are empty. If the file is empty, it generates a C++ class template and writes it to the file. The class name is derived from the filename (without the `.hpp` extension).

## Script Explanation

### Step 1: Check for `.hpp` Files
The script first checks for `.hpp` files in the current directory using `ls` and `grep`. If no `.hpp` files are found, it prints "No headers found" and exits with status `1`.

### Step 2: Define Template
The script defines a C++ class template with placeholders (`@@`) for the class name, constructor, destructor, and assignment operator.

### Step 3: Loop Through `.hpp` Files
For each `.hpp` file, the script:
- Checks if the file is empty using `wc -c`.
- If the file is not empty, it skips to the next file and prints a message.
- If the file is empty, it generates the class template and replaces the `@@` placeholders with the class name derived from the file name (without the `.hpp` extension).
- Writes the generated template back to the file.

## Requirements
- Bash
- `ls`, `grep`, `wc`, `sed`, and `echo` commands available in the shell.

## Installation

1. Download the `mc` script file.
2. Move the script to a directory that is part of your system's `PATH` (e.g., `/usr/local/bin/` or `~/bin/`), or add its directory to the `PATH` by modifying your shell configuration file (e.g., `~/.bashrc`, `~/.zshrc`):
   
   Add the following line:
   ```bash
   export PATH=$PATH:/path/to/directory
