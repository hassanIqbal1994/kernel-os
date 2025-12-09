# ⚙️ kernel-os - A Simple Bare-Metal Kernel

## 🚀 Overview
Kernel-OS is a minimal 64-bit x86 bare-metal kernel. It features VGA text output and supports multibooting with GRUB. We built it from scratch using a custom toolchain along with C and NASM. You can easily run it in QEMU.

## 💾 Download Kernel-OS
[![Download Kernel-OS](https://img.shields.io/badge/Download-Kernel--OS-brightgreen)](https://github.com/hassanIqbal1994/kernel-os/releases)

## 📥 Download & Install
To get started, visit this page to download: [Kernel-OS Releases](https://github.com/hassanIqbal1994/kernel-os/releases).

1. Open your web browser and go to the [Kernel-OS Releases page](https://github.com/hassanIqbal1994/kernel-os/releases).
2. Find the latest version. You will see a list of files.
3. Click on the file named `kernel-os-x86_64.elf` to download it.
4. Save the file to a location on your computer that you can easily remember, like your Desktop.

## 🖥️ System Requirements
- A computer with a 64-bit x86 processor.
- At least 1 GB of RAM.
- A way to run QEMU, which can be installed on most systems.

## ⚙️ Running Kernel-OS
To run Kernel-OS, you will need to use QEMU. Follow these steps:

1. **Install QEMU**:
   - **Windows**: Download the installer from the [QEMU website](https://www.qemu.org/download/) and follow the instructions.
   - **macOS**: You can install QEMU using Homebrew with the command: `brew install qemu`.
   - **Linux**: Use your package manager. For example, on Ubuntu, run: `sudo apt install qemu`.

2. **Run Kernel-OS**:
   - Open your command line interface (Command Prompt, Terminal, etc.).
   - Navigate to the folder where you saved `kernel-os-x86_64.elf`. You can use the command `cd path_to_your_folder`, replacing `path_to_your_folder` with your actual folder path.
   - Type the following command and press Enter:
     ```
     qemu-system-x86_64 -kernel kernel-os-x86_64.elf
     ```

Your system should now boot into Kernel-OS! You will see a simple text output on the screen.

## 🎯 Features
- **Minimal Design**: Kernel-OS is designed to be simple and lightweight.
- **VGA Text Output**: The kernel supports VGA text output, allowing you to see messages on the screen clearly.
- **Multiboot GRUB Support**: You can start Kernel-OS using GRUB, making it flexible for various setups.

## 🛠️ Customization Options
If you're curious about customization, you may explore modifying the kernel code. It works well with C and NASM. Here are some ideas to get started:

- Change the text messages displayed during boot.
- Modify the memory settings for different environments.
- Add more features, such as simple input handling.

## 🔗 Additional Resources
If you're interested in exploring more about Kernel-OS or contributing, here are some useful links:

- [GitHub Repository](https://github.com/hassanIqbal1994/kernel-os)
- [Documentation](https://github.com/hassanIqbal1994/kernel-os/wiki)
- [Community Discussions](https://github.com/hassanIqbal1994/kernel-os/discussions)

## 🐛 Reporting Issues
If you find any issues or have questions, please open an issue in the GitHub repository. We appreciate your feedback and will work to resolve any problems.

## 🎉 Conclusion
Thank you for trying out Kernel-OS! We hope you find it useful. Don't hesitate to share your experiences and improvements with the community. 

For the latest version, don't forget to visit: [Kernel-OS Releases](https://github.com/hassanIqbal1994/kernel-os/releases).