## What is exit status in unix?
In Unix-like operating systems, the exit status, often represented as an integer value, is a code returned by a command or a program to indicate the outcome of its execution. A zero (0) exit status typically signifies success, while non-zero values are used to convey various error conditions, allowing scripts and other processes to make decisions based on the success or failure of preceding commands. This exit status can be accessed or checked programmatically to determine whether a command executed successfully or encountered an issue.

## List no of unique IP adddress in files?
To count the number of unique IP addresses in a file, you can use command-line tools like `awk` and `sort`. Assuming you have a file named "file.txt" containing IP addresses, you can use the following command:

```bash
cat file.txt | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort -u | wc -l
```

Here's what each part of the command does:

1. `cat file.txt`: This command reads the content of "file.txt."

2. `grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"`: This part uses `grep` with a regular expression to extract IP addresses from the file. It looks for sequences of digits (0-9) separated by periods (.), which is the basic format of an IPv4 address.

3. `sort -u`: This sorts the extracted IP addresses and removes duplicates using the `-u` flag.

4. `wc -l`: Finally, `wc` (word count) with the `-l` flag counts the number of lines, which represents the number of unique IP addresses.

Running this command will display the count of unique IP addresses in the "file.txt" file.

## Command for display all ports?
To display a list of all open ports on your Unix-like system, you can use the `netstat` or `ss` command. Here are examples using both commands:

Using `netstat`:
```bash
netstat -tuln
```

Using `ss`:
```bash
ss -tuln
```

Both of these commands provide similar information:

- `-t`: Display TCP ports.
- `-u`: Display UDP ports.
- `-l`: Show only listening ports.
- `-n`: Show numerical addresses instead of resolving hostnames.

Running either of these commands in your terminal will list all open ports on your system along with their respective protocols (TCP or UDP) and numerical port numbers.

## what is shebang?
A shebang, often represented as "#!", is a special character sequence at the beginning of a script or program file in Unix-like operating systems. It specifies the path to the interpreter that should be used to execute the script. When a script with a shebang is run, the operating system uses the specified interpreter to interpret and execute the script's code. This allows for the seamless execution of scripts written in different programming languages without explicitly specifying the interpreter in the command line.

## How to check linux version?
```
cat /etc/os-release
```
```
uname -a
```
```
lsb_release -a
```

## Diff between wget and curl command in linux?
`wget` and `curl` are both command-line tools in Linux used for downloading files from the internet, but they have some key differences. `wget` is primarily designed for non-interactive downloads and excels at recursively downloading entire directories, handling interrupted downloads, and following links within HTML pages. In contrast, `curl` is more versatile and can not only download files but also perform a wide range of network-related tasks, including sending HTTP requests with various methods and headers, making it suitable for scripting and automation. While `wget` is generally simpler to use for basic downloads, `curl` offers more advanced features and flexibility for a broader range of network-related tasks.

## what is AWK command in linux?
AWK is a versatile text-processing tool and programming language that is commonly used in Unix and Linux environments. It's designed for processing and manipulating text and is particularly useful for working with structured data like columns and rows. AWK operates on a per-line basis, reading input lines, applying patterns, and performing actions based on those patterns. It allows you to search for specific patterns or conditions within text files and then perform actions, such as printing specific columns, performing mathematical calculations, and much more. AWK scripts consist of pattern-action pairs, making it a powerful tool for text extraction, transformation, and reporting in the Linux command-line environment.

## How to check free space in linux?
```
df -h
```

## What is gruop in linux?
In Linux, a "group" refers to a collection of user accounts that share certain permissions and attributes for file and resource access. Groups are a way to manage and control access to files, directories, and other system resources, allowing multiple users to have similar access rights without specifying permissions for each individual user separately.

## How to check which user assign to which user?
In Linux, you can check which groups a user belongs to by using the `groups` command followed by the username you want to check. Here's the command:

```bash
groups username
```

Replace "username" with the actual username you want to inquire about. When you run this command, it will list all the groups that the specified user is a member of.

For example, to check the groups for a user named "john," you would run:

```bash
groups john
```

The output will display a list of group names that the user "john" belongs to.

If you need to check which users are members of a specific group, you can use the `getent` command followed by the group name. Here's the command:

```bash
getent group groupname
```

Replace "groupname" with the name of the group you want to check. This command will list all the users who are members of that group.

For example, to check the members of a group named "developers," you would run:

```bash
getent group developers
```

The output will display a list of usernames that are part of the "developers" group.

## what is 
$? :-This variable holds the exit status of the last executed command or script. A value of 0 typically indicates success, while non-zero values indicate an error.

$# :-  This variable holds the number of arguments (parameters) passed to a shell script or command.

$0 :- This variable contains the name of the currently running script or command. It's also known as the "zeroth argument."

$$ :-  This variable contains the process ID (PID) of the currently running shell or script.

$1 :- These variables represent the positional parameters or arguments passed to a shell script or command. $1 holds the first argument,

$2 :- $2 holds the second argument, and so on.

$* :-This variable represents all the arguments passed to a shell script or command as a single string, separated by spaces. It's often used to iterate through all the arguments in a loop.

## write an script for print 1 to 10 no.?
```
#!/bin/bash

# Loop from 1 to 10 and print each number on a new line
for i in {1..10}; do
  echo $i
done
```

## what is softlink and hardlink in linux?
In Linux, a softlink (symbolic link) is a pointer to another file or directory that acts as a reference, similar to a shortcut in a graphical user interface. Softlinks are distinct files with their own Inode and permissions and can point to files or directories across different filesystems. They are flexible but can break if the target file is moved or deleted.

On the other hand, a hardlink is a reference to the same underlying data (Inode) as the original file, essentially creating multiple directory entries that point to the same physical storage location. Hardlinks must exist on the same filesystem, and changes to one hardlink are reflected in all others, as they share the same data. They are efficient in terms of storage but lack the flexibility of softlinks.

## What is inode in linux?
In Linux, an inode, short for "index node," is a data structure that stores metadata about a file or directory, including information like permissions, ownership, timestamps, and the physical location of data blocks on the storage device. Each file and directory in the filesystem is associated with an inode, and these inodes are used by the operating system to manage and access files efficiently. Inodes are crucial for maintaining the hierarchical structure and attributes of files and directories on a Linux filesystem.

## LVM in linux? 
LVM, which stands for Logical Volume Manager, is a technology used in Linux and other Unix-like operating systems to manage storage devices and provide a more flexible and dynamic approach to disk management. LVM abstracts the physical storage devices (such as hard drives or SSDs) into logical volumes, allowing for features like volume resizing, snapshots, and easy management of storage resources.

## Where to store local DNS entry in linux?
In Linux, you can store local DNS entries in the `/etc/hosts` file. The `/etc/hosts` file is a plain text file that allows you to manually specify mappings between IP addresses and hostnames, effectively creating local DNS entries that take precedence over DNS resolution from external DNS servers.

Each line in the `/etc/hosts` file typically follows this format:

```
IP_address   Hostname [Alias1 Alias2 ...]
```

- `IP_address`: The IP address you want to associate with the hostname.
- `Hostname`: The fully qualified domain name (FQDN) or hostname you want to resolve to the specified IP address.
- `[Alias1 Alias2 ...]` (Optional): You can specify aliases or alternate names for the same IP address.

For example, to create a local DNS entry for a server with the IP address `192.168.1.100` and the hostname `myserver`, you would add the following line to your `/etc/hosts` file:

```
192.168.1.100   myserver
```

After adding the entry, your system will resolve the hostname `myserver` to the specified IP address whenever you use it in applications or commands. This is useful for custom or private DNS mappings on your local system. Remember that these entries only affect the local machine and do not impact DNS resolution for other devices on the network.

## what is Linux file system?
The Linux file system, often referred to as the "Linux filesystem," is a hierarchical structure used to organize and manage data on a Linux-based operating system. It defines how files and directories are stored, named, and accessed on storage devices such as hard drives, solid-state drives (SSDs), and networked file systems. The Linux filesystem serves as the foundation for storing and retrieving data, and it plays a crucial role in the overall functioning of the operating system.

## How to read file in shell?
```
cat filename.txt
```

## How to check file emplty in linux?
Using stat command:
The stat command can provide detailed information about a file, including its size. You can use this information to check if a file is empty or not. For example:
```
if [ "$(stat -c %s filename.txt)" -eq 0 ]; then
    echo "The file is empty."
else
    echo "The file is not empty."
fi
```

## what is signals and trap in Linux?
In Linux, signals are asynchronous notifications sent by the kernel or processes to other processes or to the operating system itself, indicating events or requests for specific actions. Signals are used for process control, communication, and handling various situations, such as terminating a process (e.g., SIGTERM), suspending a process (e.g., SIGSTOP), or refreshing a process (e.g., SIGHUP). 

The `trap` command is a built-in shell command used to set up signal handlers within shell scripts. It allows scripts to respond to specific signals by executing custom actions or commands when the signals are received, enabling better control and error handling in shell scripts.

## how to read array I/P in linux?
```
#!/bin/bash

# Prompt the user to enter elements of an array
echo "Enter elements of the array (separated by spaces):"
read -a my_array

# Display the array elements
echo "Array elements entered by the user:"
for element in "${my_array[@]}"; do
    echo "$element"
done
```

## How to count no of lines in files in linux?
You can count the number of lines in a file in Linux using several methods and commands. Here are some common ways to achieve this:

1. **Using `wc` (word count) command:**
   The `wc` command is a versatile tool that can count lines, words, and bytes in a file. To count lines in a file, use the `-l` option:
   ```bash
   wc -l filename.txt
   ```

2. **Using `nl` (number lines) command:**
   The `nl` command adds line numbers to a file, and you can use the `-ba` option to count lines without displaying line numbers:
   ```bash
   nl -ba filename.txt | wc -l
   ```

3. **Using `grep` command:**
   You can use `grep` to search for a regular expression that matches all lines and then count the matching lines:
   ```bash
   grep -c '' filename.txt
   ```

4. **Using `sed` command:**
   `sed` can be used to remove all lines from a file and then count the remaining lines:
   ```bash
   sed -n '$=' filename.txt
   ```

All of these methods will provide you with the total number of lines in the specified file (`filename.txt`). Choose the method that suits your needs or is most convenient for your particular use case.

## How to find duplicates in file?
To find and identify duplicate lines in a file on a Linux system, you can use several methods and commands. Here are some common approaches:

1. **Using `sort` and `uniq` commands:**
   You can sort the lines in the file and then use the `uniq` command to display and count the duplicate lines. For example:
   ```bash
   sort filename.txt | uniq -d
   ```
   This command will display the duplicate lines in the file `filename.txt`.

2. **Using `awk`:**
   You can use `awk` to process the file and print duplicate lines based on specific criteria. For instance, to find exact duplicate lines in a file:
   ```bash
   awk 'seen[$0]++ == 1' filename.txt
   ```

3. **Using `grep` and `sort`:**
   You can use `grep` to identify duplicate lines and then sort the results to display them together. For example:
   ```bash
   grep -o -n -i '[[:print:]]*' filename.txt | sort
   ```
   This command will display duplicate lines along with line numbers.

## How to taken backup in Linux?
```
cp file.txt backup_file.txt
```
**Using cloud-based backup services**:
Consider using cloud-based backup services like AWS S3, Google Cloud Storage, or services like Rclone to create off-site backups for added redundancy and disaster recovery.

**Using dedicated backup software**:
There are various third-party backup software solutions available for Linux that offer a wide range of features and capabilities, including system-level backups and data deduplication.

## what is debugging in shell scripting?
Debugging in shell scripting refers to the process of identifying, diagnosing, and resolving errors or issues in a shell script. It involves systematically analyzing the script's code, execution flow, variables, and output to pinpoint and correct any unexpected behavior or problems. Common debugging techniques include adding print statements, using debugging tools like `set -x` (for tracing) or `set -e` (for error handling), and inspecting error messages and exit codes to effectively troubleshoot and improve the reliability of shell scripts.

## Diff between shell and cmd module in linux?
In Linux, the "shell" and "cmd" (Command Prompt) are two different environments used for interacting with the operating system, and they have distinct characteristics:

1. **Shell (Linux/Unix):**
   - **Command Interpreter:** The shell in Linux/Unix is both a command interpreter and a scripting language. Common Unix/Linux shells include Bash, Zsh, and Tcsh, among others.
   - **Scripting:** Shells in Linux/Unix are powerful scripting languages, allowing you to create complex scripts for automation, system administration, and other tasks.
   - **Customization:** Shells offer extensive customization options through configuration files like `.bashrc`, allowing you to define aliases, environment variables, and functions.
   - **Syntax:** Shells use different syntax from Windows Command Prompt (cmd), including different commands, options, and scripting constructs.
   - **Filesystem Navigation:** Shells in Linux/Unix typically use forward slashes ("/") to navigate the filesystem, and they support features like tab completion and file globbing.

2. **Cmd (Command Prompt - Windows):**
   - **Command-Line Environment:** Cmd is the command-line environment in Windows. It provides a text-based interface for running commands and scripts.
   - **Scripting:** While it allows some basic scripting using batch files (with a `.bat` or `.cmd` extension), the scripting capabilities are more limited compared to Unix/Linux shells.
   - **Customization:** Customization options are available but are less extensive than Unix/Linux shells. Environment variables and aliases are not as commonly used.
   - **Syntax:** Cmd uses different commands, options, and scripting constructs compared to Linux/Unix shells.
   - **Filesystem Navigation:** Cmd uses backslashes ("\") for filesystem navigation, which is different from the forward slashes used in Linux/Unix.

## What is Cron Expression?
A Cron expression is a string of characters used to specify a schedule for running recurring tasks or jobs on Unix-like operating systems, including Linux. It defines when and how often a particular command or script should be executed by the Cron daemon, a time-based job scheduler in Unix-like systems.
A typical Cron expression consists of five fields separated by spaces, each representing different time components:

Minute (0 - 59): The minute at which the task should run (0 to 59).

Hour (0 - 23): The hour at which the task should run (0 to 23).

Day of the Month (1 - 31): The day of the month on which the task should run (1 to 31).

Month (1 - 12 or Jan - Dec): The month in which the task should run (1 to 12 or abbreviated names like Jan, Feb, etc.).

Day of the Week (0 - 7 or Sun - Sat): The day of the week on which the task should run (0 or 7 typically represent Sunday, 1 represents Monday, and so on, or abbreviated names like Sun, Mon, etc.).

## what is SED in linux?
SED, which stands for Stream Editor, is a powerful command-line utility in Linux and Unix-like operating systems. It is primarily used for text manipulation and editing tasks in a non-interactive, batch processing manner. SED reads text input, processes it based on specified commands or scripts, and then outputs the modified text. It is commonly used for tasks such as search and replace, text substitution, line deletion or insertion, and more, making it a versatile tool for text processing and editing in shell scripts and one-liners.

## what is GREP command?
`grep` (short for "Global Regular Expression Print") is a powerful command-line utility in Linux and Unix-like operating systems that allows users to search for and extract lines from text files or input streams that match a specified pattern or regular expression. It is commonly used for tasks like searching for specific words or phrases within files, filtering and processing log files, and performing text manipulation operations. `grep` offers various options for controlling the search, including case-insensitive matching, displaying line numbers, and recursively searching directories.

## How will you manage logs of syetms that generates huge log files everyday?


## What is process and deamon in linux?

## What do you understand by kernel?

## How to reduce LVM partition in linux?

## If root user access removed how do you access it?

## What is shadow password?
