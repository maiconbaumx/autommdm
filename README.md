# autommdm (Automatic Monitoring Memory and Disk Metrics)
This is simple to use.
This script automate the installation of Monitoring Memory and Disk Metrics for Amazon EC2 Linux Instances script from AWS.

*Note: This script have all the disk's path you have in your host. 
*Note²: This script already have the original Monitoring Memory and Disk Metrics for Amazon EC2 Linux Instances script.

Because we have to add path by path in a metric to every disk in a host, this script do it in all disks in the host.
Just clone this to /root directory and then, add a line in to your crontab, passing the path to script and the frequency you want.


# Example of usage
/bin/bash /root/aws-scripts-mon/automate.sh
