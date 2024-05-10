 # what is Anacron?
Anacron is a tool used in Unix-like operating systems, including Linux, to execute commands periodically, with the primary goal of handling tasks that should run regularly but cannot be scheduled using the traditional cron system. While cron is suitable for tasks that need to run at specific times, anacron is more appropriate for tasks that need to run at regular intervals but might not always be running, such as on laptops or systems that are frequently turned off.

Anacron accomplishes this by checking timestamps on tasks and running them if they haven't been executed in a certain amount of time, rather than at a specific time of day. It's commonly used for tasks like system maintenance, backups, or periodic updates.

***Use Cases***
- Dialy system backups
- Weekly fiel log cleaning
- Montly report generating
- S/w updates
- Database Maintainance

  
