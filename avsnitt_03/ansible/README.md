# Ansible
misc ansible stuff som jag kopierat från mitt eget [repo](https://github.com/joltcan/ansible). 

## update.yml

Denna kör jag när nåt viktigt paket har blivit uppdaterat, eller nån gång i veckan.
```
ansible-playbook update.yml --extra-vars "target=somehosts"
````
Somehosts kan t.ex. vara dbservers som är definierade i hosts, eller all. Vill du alltid köra alla hostar per default kan du ju modda filen, kolla på [stackoverflow](http://stackoverflow.com/questions/18195142/safely-limiting-ansible-playbooks-to-a-single-machine) om du vill se varför.

