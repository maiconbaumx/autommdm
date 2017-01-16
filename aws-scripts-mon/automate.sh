/root/aws-scripts-mon/mon-put-instance-data.pl --mem-util  --mem-used --mem-avail --swap-util --swap-used #--aws-credential-file=/root/aws-scripts-mon/awscreds.template

START=2
COUNTER=`df -h | awk '{print $6}' | wc -l`
         while [  $START -lt $COUNTER ]; do
             /root/aws-scripts-mon/mon-put-instance-data.pl --disk-path=$(df -h | awk '{print $6}' | grep -n ^ | grep ^$START: | cut -d: -f2)  --disk-space-used --disk-space-avail --disk-space-util #--aws-credential-file=/root/aws-scripts-mon/awscreds.template
             let START=START+1
         done
/root/aws-scripts-mon/mon-put-instance-data-raiz.pl --disk-space-util --disk-space-used --disk-space-avail --disk-path=/ #--aws-credential-file=/root/aws-scripts-mon/awscreds.template
