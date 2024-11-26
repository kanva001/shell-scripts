   #!/bin/bash

   # Check if kubectl is installed
   if ! command -v kubectl &> /dev/null
   then
       echo "kubectl could not be found, please install it first."
       exit
   fi

   # Apply all YAML files in the current directory
   for file in *.yaml; do
     echo "Deleting $file..."
     kubectl delete -f $file
   done

   echo "All resources have been applied."
