// Simple Script - iterate through a css source folder and generate a gzip file for each.


for i in `find ./  -name  "*.css"`
do
gzip -9 -c -f $i > $i.gz
done
