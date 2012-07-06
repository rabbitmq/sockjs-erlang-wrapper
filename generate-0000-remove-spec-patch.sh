#!/bin/sh
# In order to generate patch do run this script.
cd sockjs-erlang-git/src
git checkout *
sed 's#^\(-type.*\)#%% \1#g' -i *
sed 's#^\(-spec.*\)#%% \1#g' -i *
sed 's#^\(-record.*\)::\(.*\)$#\1, %% \2#g' * -i
sed 's#^\( .*\)::\(.*\),$#\1, %% \2#g' * -i
sed 's#^\( .*\)::\(.*\)$#\1 %% \2#g' * -i
git diff > ../../0000-remove-speac-patch.diff
