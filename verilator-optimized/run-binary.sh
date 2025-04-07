#! /usr/bin/zsh -f

binary="./obj_dir/Vquadra_top"

if [ ! -f "${binary}" ]; then
    echo "Could not find executable file ${binary} -- exiting!"
    exit 1
fi     

echo "--------------------------------------------------------------------------------"
echo "Running ${binary} ..."
echo "--------------------------------------------------------------------------------"

${binary}

echo "--------------------------------------------------------------------------------"
echo "Done with ${binary}."
echo "--------------------------------------------------------------------------------"