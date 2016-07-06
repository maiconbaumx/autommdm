/root/aws-scripts-mon/mon-put-instance-data.pl --mem-util
/root/aws-scripts-mon/mon-put-instance-data.pl --mem-used
/root/aws-scripts-mon/mon-put-instance-data.pl --mem-avail 
/root/aws-scripts-mon/mon-put-instance-data.pl --swap-util
/root/aws-scripts-mon/mon-put-instance-data.pl --swap-used

START=2
COUNTER=`df -h | awk '{print $6}' | wc -l`
         while [  $START -lt $COUNTER ]; do
             /root/aws-scripts-mon/mon-put-instance-data.pl --disk-path=$(df -h | awk '{print $6}' | grep -n ^ | grep ^$START: | cut -d: -f2)  --disk-space-util
             /root/aws-scripts-mon/mon-put-instance-data.pl --disk-path=$(df -h | awk '{print $6}' | grep -n ^ | grep ^$START: | cut -d: -f2)  --disk-space-used
             /root/aws-scripts-mon/mon-put-instance-data.pl --disk-path=$(df -h | awk '{print $6}' | grep -n ^ | grep ^$START: | cut -d: -f2)  --disk-space-avail 
             let START=START+1
         done
