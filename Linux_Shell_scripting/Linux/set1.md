## What is a process & how it works?

The process is a program that is in the running state.
PID: Process ID
PPID: Parent process ID
Init process started by kernel whose PID is 1 which does not have any parent process
The kernel is the core of the OS that controls everything
Daemon is the process that runs continuously in the background
Kill command is to kill the process
Zombie is the process which is killed but still shows in the OS
When you boot the OS the kernel will start the init process(1) and it will execute the different shell scripts to turn on the processes. Some processes become daemon and some will start.
When one process starts another process then it will first create a copy of itself then it will create the child process and it will replace the copy

## What is the difference between init & systems?

Init:
The traditional init system follows a simple and linear approach to process management. It starts processes sequentially.
init relies on external shell scripts and simple configuration files to manage services. Each service is typically started and stopped using shell scripts in the /etc/init.d/ directory.
init typically relies on syslog or other logging mechanisms for service output and logging.
2. Systemd:

systemd is a modern initialization and service management system that follows a more complex and parallel approach. It aims to improve system startup performance by starting services in parallel and offers a more feature-rich configuration system.
systemd uses native service unit files (often with a .service extension) for service management. These unit files can define various service properties, dependencies, and execution parameters, providing more fine-grained control over service behavior.
systemd includes its own logging system called systemd-journald, which provides advanced features like structured logging and centralized log management.

## Explain the boot process of Linux.

When you boot the OS the hardware transfers the control to Bios, which resides in the ROM. The bios perform the health check of the hardware component and then it will start scanning the list of bootable devices once it finds the bootloader it will go to MBR (Master Boot Record) and then grub loads the kernel to memory and then the kernel will start the init process(1) and it will execute the different scripts to turn on the processes. Some processes become daemon and some will start.
BIOS (Basic I/O system) — MBR (Master Boot Record) — GRUB (Grand unified boot loader) — Kernel — SystemD, Init

## I have one Linux machine, and an application is installed on it but I am not able to access this machine through a web browser how you will troubleshoot?

Check whether the port on which the application is running is open or not
Check whether the service is running or not
Check the logs for errors
Check the server whether it’s configured perfectly or not

## 2 servers are in the same network but the ping command is not working what is the issue?

Check if there are any firewalls or security software (including antivirus programs) running on either server that might be blocking ICMP (ping) packets.
Ensure that you are using the correct IP addresses for both servers.
Confirm that both servers are on the same subnet and have the correct network configuration settings, including IP addresses, subnet masks, and default gateways.
Ensure that both servers can resolve each other’s hostnames to the correct IP addresses. You can use the nslookup or ping with hostnames to test DNS resolution.
Check for IP address conflicts on the network. If two devices have the same IP address, it can cause communication issues.

## Write a linux command that will print the only IP address of the machine

curl ifconfig.me: Will only print the public IP
ifconfig | grep -oE ‘inet (addr:)?([0–9]*\.){3}[0–9]*’ | awk ‘{print $2}

## Write the command to find all the files modified in the last 3 days

find /path/to/directory -mtime 3

## What is the difference between kill and kill -9 commands?

Kill command will generate a SIGTERM which will ask process to kill itself where kill -9 command will generate SIGKILL which will kill the process immediatly. It does not wait for the process to clear memory or wait for a graceful exit.

## What is INITRD in Linux?

In Linux, INITRD (short for “initial RAM disk”) is a temporary file system that’s loaded into memory during the boot process before the actual root file system is mounted.
When a Linux system boots up, the kernel is loaded into memory and executed. However, the root file system, which contains all the user programs and configuration files, may reside on a storage device like a hard drive or SSD.
During the boot process, the kernel detects the INITRD/INITRAMFS image and loads it into memory as a temporary file system.
Once the necessary drivers are loaded and the system can access the real root file system, the kernel switches over to it, and the INITRD/INITRAMFS is unmounted.

## What is MBR in linux?

MBR stands for Master Boot Record, and it is a crucial data structure used in partitioned storage devices, including those used with Linux operating systems.
The MBR contains a small program known as a bootloader. The bootloader’s primary job is to load and execute the operating system’s kernel, which is responsible for starting the Linux operating system. Common Linux bootloaders include GRUB (Grand Unified Bootloader)
The MBR also includes a partition table that describes how the storage device is divided into partitions.

## What is .bashrc and .bashrc_profile in Linux?

These files allow you to customize your shell environment and behavior by setting various environment variables, aliases, and functions.
.bashrc: This file is read and executed every time you start a new non-login interactive shell session.
.bash_profile: This file is read and executed only when you log in to the system.

## What is INODE?

An inode, short for "index node," is a data structure used in Unix-based file systems
Each file or directory on a Unix file system is associated with an inode, which contains information about that specific file or directory. Inodes are crucial for managing and organizing files on a file system.
File type: Indicates whether the inode represents a regular file, directory, symbolic link, device file, or other file types.
File permissions: Specifies the access permissions for the file, determining who can read, write, or execute the file.
Owner and group: Identifies the user and group associated with the file or directory.
File size: Records the size of the file or directory in bytes.
Timestamps: Includes timestamps for when the file or directory was created, last modified, and last accessed.

## What are mtab and fstab in Linux?

mtab and fstab are two important files in Linux that are used to manage and control filesystems and their mounting.
mtab (Mounted Filesystems Table):
mtab is a system file that keeps a record of currently mounted filesystems.
fstab (File System Table):
fstab is a system configuration file that defines how and where filesystems should be mounted at boot time.

## What is Swap Space?

Swap Space is the additional space used by Linux that temporarily holds concurrently running programs when the RAM does not have enough space to hold the programs. When you run a program, it resides on the RAM so that the processor can fetch data quickly. Suppose you are running more programs than the RAM can hold, then these running programs are stored in the Swap Space. The processor will now look for data in the RAM and the Swap Space.

## What are daemons?

A daemon is a computer program that runs as a background process to provide functions that might not be available in the base Operating System. Daemons are usually used to run services in the background without directly being in control of interactive users. The purpose of Daemons are to handle periodic requests and then forward the requests to appropriate programs for execution.
