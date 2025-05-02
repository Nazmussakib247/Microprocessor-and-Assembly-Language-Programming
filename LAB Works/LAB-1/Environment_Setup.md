# Environment Setup for Assembly Language Programming (emu8086)

This guide will help you set up the `emu8086` environment for learning and writing Assembly Language Programs.

## 🔧 Requirements

- A Windows-based PC (emu8086 is Windows-compatible only)
- Internet connection for downloading the software

## 🛠️ Step-by-Step Setup Guide

### 1. Download emu8086

- Visit the official website: [http://www.emu8086.com](http://www.emu8086.com)
- Click on the **Download** link
- Choose the latest version of `emu8086` and download the `.exe` installer

### 2. Install the Software

- Run the downloaded installer
- Follow the on-screen instructions
- Choose default installation settings unless specific changes are needed

### 3. Launch emu8086

- After installation, open `emu8086`
- You will see the code editor, emulator, and compiler in a single integrated environment

### 4. Write and Run Your First Program

- Click on **File → New** to create a new ASM file
- Write a simple program, for example:

```
assembly
.model small
.stack 100h
.data
.code
main:
    mov ah, 09h
    mov dx, offset msg
    int 21h
    mov ah, 4Ch
    int 21h
msg db 'Hello, World!$'
end main
```
---
## 🔐 License

The `emu8086` software used in this repository requires a valid license key.  
If you need assistance or want to use the full version, please reach out to the author.

> ⚠️ The license key is not included in this public repository for security and ethical reasons.

---

## 📚 References

- [emu8086 Official Website](http://www.emu8086.com)
- [x86 Assembly Wikibook](https://en.wikibooks.org/wiki/X86_Assembly)
- [DOS Interrupt List](http://www.ctyme.com/intr/)


## 👤 Author Information

* **Name:** Nazmus Sakib
* **GitHub Profile:** [Nazmussakib247](https://github.com/Nazmussakib247)
* **Contact Email:** nazmussakib.cse.nubt@gmail.com