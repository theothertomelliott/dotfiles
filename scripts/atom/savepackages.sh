#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "#!/bin/bash" > $DIR/installpackages.sh
apm list --installed --bare | xargs -n1 echo "apm install" >> $DIR/installpackages.sh
chmod +x $DIR/installpackages.sh
