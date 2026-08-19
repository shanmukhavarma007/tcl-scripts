# Tcl Scripts for VLSI Physical Design

A collection of **Tcl scripts, automation utilities, and practical exercises** developed while learning Tcl scripting for **VLSI Physical Design**.

This repository documents my progression from **Tcl fundamentals to practical scripting for EDA/Physical Design workflows**, with an emphasis on file processing, report parsing, data manipulation, automation, and reusable procedures.

> **Goal:** Build strong Tcl scripting skills that can be applied to real-world VLSI Physical Design automation and EDA tool flows.

---

## About This Repository

This repository serves as my **Tcl learning and implementation log**.

Rather than maintaining only isolated Tcl examples, I am gradually converting the concepts I learn into practical scripts and small automation projects that resemble tasks commonly encountered in VLSI design flows.

The repository will continue to evolve as I learn more advanced Tcl and apply it to Physical Design.

---

## Current Tcl Skills

### Tcl Fundamentals

* Variables
* `puts` / `gets`
* `expr`
* Comments
* Quoting and braces
* Variable substitution
* Command substitution
* Conditional statements
* Loops
* Control flow
* `incr`
* `append`

### Strings

* String creation and manipulation
* `string` command
* String comparison
* Searching and extracting information
* String formatting

### Lists

* Creating and manipulating lists
* `lindex`
* `lrange`
* `llength`
* `lappend`
* `linsert`
* `lreplace`
* `lsearch`
* `lsort`
* `split`
* `join`
* `lassign`

### Arrays & Dictionaries

* Tcl arrays
* Associative data storage
* Array traversal
* Dictionaries
* Key-value based data handling

### File Handling

* Opening files
* Reading files
* Writing files
* Appending data
* File modes
* End-of-file handling
* File existence checks
* Directory/file operations

### Regular Expressions

* `regexp`
* Pattern matching
* Capturing groups
* Extracting structured information from reports and logs

### Procedures

* Creating reusable procedures
* Procedure arguments
* Return values
* Local and global scope
* Variable scope management

### Tcl Built-in Global Variables

Practical usage of:

* `argc`
* `argv`
* `argv0`

These are particularly useful for building command-line driven Tcl utilities.

### Script Execution & Modularity

* `source`
* Breaking large scripts into reusable modules
* Passing command-line arguments
* Building reusable Tcl components

---

# VLSI Physical Design Applications

The main purpose of this repository is to connect **Tcl programming with Physical Design engineering**.

Typical automation problems I am exploring include:

```text
EDA Reports
    │
    ▼
Tcl Script
    │
    ├── File I/O
    ├── Regular Expressions
    ├── Lists / Arrays
    ├── String Processing
    └── Procedures
    │
    ▼
Extracted Data
    │
    ▼
Summary / Analysis / Report
```

The long-term objective is to use Tcl for automating repetitive tasks across Physical Design stages such as:

* Floorplanning
* Placement
* CTS
* Routing
* Static Timing Analysis
* Power analysis
* DRC/LVS report processing
* Design report generation
* Log analysis
* Flow automation

---

# Projects

## 1. Timing Report Parser

A Tcl-based parser designed to process timing-related report data and extract useful information.

### Concepts Used

* File I/O
* Lists
* String manipulation
* Regular expressions
* Procedures
* Conditional logic
* Loops
* Command-line arguments

### Objective

To understand how Tcl can be used to transform raw timing-report information into structured and readable data.

This project is intended to simulate the type of report-processing and automation tasks encountered in Physical Design environments.

---

## 2. Physical Design Report / Log Analyzer

A Tcl-based utility for scanning simulated Physical Design reports/logs and identifying important information such as:

* Errors
* Warnings
* Violations
* Flow-stage information

Example flow stages include:

```text
Floorplan
Placement
CTS
Routing
STA
Power
DRC
LVS
```

### Concepts Used

* File handling
* `regexp`
* Lists
* String manipulation
* Procedures
* Global variables
* Command-line arguments
* Data aggregation

---

# Repository Structure

```text
tcl-scripts/
│
├── README.md
│
├── parse.tcl
│
├── image.png
│
└── ...
```

The repository structure will expand as new Tcl exercises and Physical Design automation projects are added.

---

# How to Run

Make sure Tcl is installed on your system.

Check the installation:

```bash
tclsh
```

Run a Tcl script using:

```bash
tclsh script_name.tcl
```

For example:

```bash
tclsh parse.tcl
```

For scripts accepting command-line arguments:

```bash
tclsh script_name.tcl argument1 argument2
```

---

# Learning Progression

My Tcl learning is being approached progressively:

```text
Tcl Fundamentals
       │
       ▼
Variables & Expressions
       │
       ▼
Control Flow
       │
       ▼
Strings & Lists
       │
       ▼
Arrays & Dictionaries
       │
       ▼
File I/O
       │
       ▼
Regular Expressions
       │
       ▼
Procedures & Scope
       │
       ▼
Command-Line Arguments
       │
       ▼
Script Modularity
       │
       ▼
Report Parsing
       │
       ▼
Physical Design Automation
       │
       ▼
EDA Tool Tcl
```

---

# VLSI / EDA Direction

The ultimate goal of this repository is to progress from **general Tcl scripting** toward Tcl used directly inside VLSI EDA environments.

Future work will focus on scripting concepts relevant to tools such as:

* Cadence Innovus
* Cadence Genus
* Cadence Tempus
* Synopsys ICC2
* Synopsys PrimeTime

The focus will be on understanding how Tcl commands can be used to:

* Query design data
* Extract information from the design database
* Automate repetitive tasks
* Analyze reports
* Create flow utilities
* Debug implementation issues
* Build reusable Physical Design scripts

---

# Current Status

**Tcl Learning:** In Progress

**Current Focus:**

```text
✓ Tcl Fundamentals
✓ Variables
✓ Control Flow
✓ Strings
✓ Lists
✓ Arrays / Dictionaries
✓ File I/O
✓ Regular Expressions
✓ Procedures
✓ Variable Scope
✓ Built-in Global Variables
✓ Command-Line Arguments
✓ Practical Report Parsing

→ Advanced Tcl
→ EDA Tool Tcl
→ Physical Design Automation
```

This repository will be updated continuously as I progress through my VLSI Physical Design training.

---

# Philosophy

I am using this repository not only to store code, but to document the transition from:

> **Learning Tcl → Writing Tcl → Applying Tcl → Automating Physical Design**

The emphasis is on **practical implementation, problem solving, and engineering application** rather than simply collecting syntax examples.

---

## Author

**Shanmukha Varma Penmetsa**

VLSI Physical Design Engineer — Aspiring

Focus Areas:

`Physical Design` · `Tcl` · `Linux` · `EDA Automation` · `STA`

---

## Repository

[View the Tcl Scripts Repository](https://github.com/shanmukhavarma007/tcl-scripts?utm_source=chatgpt.com)
