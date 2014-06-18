// Simple Script - iterate through a js source folder and generate a gzip file for each.
// for use with my .htaccess file, utilizing mod rewrite to find alternative gzip versions of source js files as 
// defined in the markup

for i in `find ./  -name  "*.js"`
do
gzip -9 -c -f $i > $i.gz
done
