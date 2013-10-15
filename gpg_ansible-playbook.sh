#! env bash
eval $(gpg-agent --daemon ) 
for file in vars/enc/*.yml.asc
    do gpg2 -d $file  > ${file:0:-4}
done

ansible-playbook "$@"

for file in vars/enc/*.yml;
    do rm $file || exit 1
done
