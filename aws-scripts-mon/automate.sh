/root/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --swap-util --swap-used

COUNTER=$(df -h | awk '{print $6}' | awk '{if (NR!=1) {print}}' | wc -l)
         for i in `seq 1 $COUNTER`;
         do
             /root/aws-scripts-mon/mon-put-instance-data.pl --disk-path=`df -h | awk '{print $6}' | grep -n ^ | cut -d: -f2 | awk '{if (NR!=1) {print}}' | awk NR==$i`  --disk-space-used --disk-space-avail --disk-space-util --verbose
         done
/root/aws-scripts-mon/mon-put-instance-data-raiz.pl --disk-space-util --disk-space-used --disk-space-avail --disk-path=/

