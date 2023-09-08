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

## Diff between wget and curl command in linux?

## what is AWK command in linux?

## How to check free space in linux?

## What is gruop in linux?

## How to check which user assign to which user?

## what is 
$? :-

$# :- 

$0 :- 

$$ :- 

$1 :- 

$2 :- 

$* :-

## write an script for print 1 to 10 no.?

## what is softlink and hardlink in linux?

## What is inode in linux?

## LVM in linux? 

## Where to store local DNS entry in linux?

## what is Linux file system?

## How to read file in shell?

## How to check file emplty in linux?

## what is signals and trap in Linux?

## how to read array I/P in linux?

## How to count no of lines in files in linux?

## How to find duplicates in file?

## How to taken backup in Linux?

## what is debugging in shell scripting?

## Diff between shell and cmd module in linux?

## What is Cron Expression?

## what is SED in linux?

## what is GREP command?

## How will you manage logs of syetms that generates huge log files everyday?

## What is process and deamon in linux?

## What do you understand by kernel?

## How to reduce LVM partition in linux?

## If root user access removed how do you access it?

## What is shadow password?

##
