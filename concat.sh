sed -i '' -e 's/<\/mysqldump>//g' mysqldump.xml;
grep 'config.xml' -n mysqldump.xml | sed -e 's/:.*//g' | xargs -I% sed -i '' -e '%,$d' mysqldump.xml;
cat config.xml >> mysqldump.xml;
sed -i '' -e '$s/$/<\/mysqldump>/g' mysqldump.xml;
