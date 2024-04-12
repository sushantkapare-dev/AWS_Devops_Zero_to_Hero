#  How do you change file permissions in Linux?
```
chmod options permissions filename
```

# What is a process in Linux?
In Linux, a process is a running instance of a program. It represents the execution of a particular program along with its associated data and resources. Each process has its own unique identifier (PID) and may have its own set of permissions, memory space, and environment variables.

#  How do you view active processes in Linux?
```
ps -aux
```

# How do you kill a process in Linux?
```
kill PID
```
forcefully kill
 ```
kill -9  PID
```
#  What is a daemon in Linux?
In Linux, a daemon is a background process that runs continuously, providing specific services or performing tasks without direct user interaction

#  What is the use of the df command in Linux?
The df command in Linux is used to display information about the disk space usage on the file system(s) that are currently mounted. It provides details such as total disk space, used space, available space, and filesystem type for each mounted partition or filesystem.
```
df -h
```

# What does the free command do in Linux?
The free command in Linux is used to display information about the system's memory usage, both physical (RAM) and swap space. It provides details such as total memory, used memory, free memory, shared memory, buffers, and cached memory.
```
free -h
```
# Explain the purpose of the grep command.
The grep command in Linux is used to search for specific patterns or regular expressions within text files or the output of other commands.

# How do you compress and extract files in Linux?
Compressing Files:
```
tar -czf example.tar.gz example.txt
```
Extracting Files:
```
tar -xzf example.tar.gz
```

# What is a symbolic link in Linux?
In Linux, a symbolic link, also known as a symlink or soft link, is a special type of file that acts as a pointer to another file or directory in the filesystem. Instead of containing the actual data of the target file or directory, a symbolic link contains a path pointing to the location of the target.

# What are inodes in Linux?
In Linux, an inode (index node) is a data structure used by the file system to represent a file or directory. Each file or directory on a Linux file system is associated with an inode, which contains metadata about the file or directory, such as its size, ownership, permissions, timestamps, and pointers to the data blocks on the disk where the actual contents of the file are stored.

# What is the purpose of the crontab in Linux?
In Linux, the crontab (cron table) is a system utility used to schedule and automate recurring tasks or commands. It allows users to specify commands or scripts that should be executed at specific intervals, such as daily, weekly, monthly, or at custom intervals.
```
* * * * * command_to_execute
```

# How can you find the IP address of a Linux server?

# Explain the purpose of the sshd service.

# How do you check the status of a service in Linux? 

# What is the purpose of the /etc/passwd file?


# Explain the use of the vi editor.

# How do you search for a file in Linux?

# What is the purpose of the iptables?

# What are environment variables in Linux?

# How do you set an environment variable in Linux?

# What is the purpose of the /etc/shadow file?

# Explain the use of the ping command.

# What is the difference between wget and curl?

# How do you check disk usage in Linux?

# Explain the use of the tail command.

# What is the purpose of the xargs command?

# How do you schedule a task in Linux?

# What is a package manager in Linux?

# Name some common package managers in Linux.

# What is the difference between yum and rpm?

# How do you list all installed packages in Linux?

# What is a Linux service?

# How do you start, stop, and restart services in Linux?

# Explain the purpose of the /etc/fstab file.

# What is LVM and what are its advantages?

# How do you create a simple script in Linux?

# What is the use of the nohup command?

# Explain the use of the sed command.

# What is the purpose of the /var directory?

# How do you monitor system performance in Linux?

# Explain the purpose of the ssh command.

# How do you secure an SSH server?

# What is the purpose of the /home directory?

# Explain the use of the awk command.

# What is swap space in Linux?

# How do you create a swap file in Linux?

#  What is the purpose of the /etc/hosts file?

# How do you set a static IP address in Linux?

# Explain the purpose of the nslookup command.

# What is the difference between iptables and firewalld?

# What are runlevels in Linux?

# How do you change runlevels?

# What is the purpose of the /boot directory?

# Explain the purpose of the rsync command.

# What is a Linux distribution?

# Name some popular Linux distributions.

# How do you change the hostname of a Linux system?

# What are system logs and where are they located?

# Explain the purpose of the netstat command.

# What is the purpose of the /etc/sysconfig directory?

# How do you update all packages in Linux?

# What are the common network configuration files in Linux?

# How do you change the default runlevel?

# What is the purpose of the /etc/resolv.conf file?

#  How do you find which process is using a particular file?

#  What is the purpose of the dmesg command?

# Explain the purpose of the usermod command.

# How do you find the size of a directory in Linux?

# What is the purpose of the /etc/cron.* directories?

# How do you change the priority of a process in Linux?

# What is the purpose of the mount command?

# Explain the purpose of the umask command.

#  What is the purpose of the /opt directory?

# Explain the purpose of the dig command.

# What are hard and soft limits in Linux?

# How do you set a quota for users in Linux?

# What is the purpose of the /usr directory?

# How do you find the hardware details of your system?

# What is the purpose of the sysctl command?

# How do you check the kernel version of your Linux system?

# What is the difference between a service and a daemon in Linux?

# How do you redirect output in Linux?

# What is the purpose of the /proc directory?

# Explain the purpose of the tr command.

# What is the difference between PATH and LD_LIBRARY_PATH?

# How do you create a read-only file in Linux?
