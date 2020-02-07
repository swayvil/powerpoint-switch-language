#!/bin/zsh
powerpoint=$1

mkdir tmp
mv ${powerpoint} tmp
cd tmp
unzip ${powerpoint}
find . -name "*.xml" -exec sed -i '' s/lang=\"en-CA\"/lang=\"fr-FR\"/g {} \;
rm -f ${powerpoint}
zip -r ${powerpoint} *
mv ${powerpoint} ../${powerpoint}
cd ..
rm -Rf tmp
