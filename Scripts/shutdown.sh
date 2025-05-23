az login
az vm deallocate --resource-group rg-lab-ivanms --name vm-master
az vm deallocate --resource-group rg-lab-ivanms --name jenkins-server
az vm list -g rg-lab-ivanms --query "[?starts_with(name, 'target')].name" -o tsv | while read vmname; do
  az vm deallocate --resource-group rg-lab-ivanms --name "$vmname"
done