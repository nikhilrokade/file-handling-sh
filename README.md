# file-handling-sh readme is written with Google Gemini
# POS Text Processor & Extraction Pipeline (Bash Automation)

A lightweight, Unix-native Shell scripting pipeline engineered to automate text analytics, clean noisy string inputs, and perform structural keyword extraction (Prepositions/Parts of Speech) from text files.

## 🛠️ Core Technical Features

*   **Native Unix Stream Processing**: Leverages low-level Linux utilities (`grep`, `awk`, `tr`) to handle file parsing efficiently without external runtime overhead.
*   **Dynamic Regex Keyword Mapping**: Compiles an optimized pipeline of preposition components to identify and separate structural grammar from raw textual payloads.
*   **Dual-Stream Extraction Logic**:
    *   **Matched Pipeline**: Extracts and isolates matched Parts of Speech (POS) tokens directly into a target verification file (`printPOS.txt`).
    *   **Remainder Processing**: Uses stream transformation logic to filter out matching structural components, preserving independent context tokens inside isolated exports (`onlyLines.txt`).
*   **Optimized File Memory Handling**: Implements the native Bash `mapfile` built-in mechanism to load and parse large text arrays safely into memory buffers.

## 📁 Repository Architecture

*   `process_text.sh` (or your script name) - Central core Bash automation script containing parsing matrices.
*   `engLish.txt` - Raw input data source holding unstructured textual information.
*   `printPOS.txt` - Output dataset capturing all isolated parts-of-speech matches.
*   `onlyLines.txt` - Sanitized backup repository capturing non-matching text content.

## 🚀 Execution & Setup Guide

### 1. Configure System Environment
Open the script and adjust the root directory path reference to point to your native system environment:
```bash
direction="/your/custom/system/path"
```

### 2. Grant Executable Permissions
```bash
chmod +x your_script_name.sh
```

### 3. Launch the Pipeline
```bash
./your_script_name.sh
```
