# My CIS-92 Project 

This is my project.

ENV_VARS:        config.yaml

| Name |  Default |  Description |
| --- | --- | --- |
| Port | 8000 | Port used by django |
| STUDENT_NAME| Anthony Frey | My Name |
| SITE_NAME | Name of site | www.anthonyfreywashere.com |
| POSTGRES_DB | mysite | Name of Database |
| POSTGRES_USER | mysiteuser | Username |
| POSTGRES_PASSWORD | this-is-a-bad-password | Password |
| POSTGRES_HOSTNAME | localhost | connect to remote cloud db |
| DEBUG | 1 | ? |
| SECRET_KEY | Top Secret | Classified

Classified Top Secret:       secret.yaml 
| Username | Password | Database |
| --- | --- | ---|
| mysiteuser | this-is-a-bad-password | mysite |

Resource Requests:
| Resource | Request | Limit |
| --- | --- | --- |
| Memory | 512M | 512M |
| CPU | 500m | 500m |
| Storage | 100M | 100M |


Step by step instructions for how to deploy your application on a Kubernetes cluster.           
Step 1)        Apply full deployment:

        kubectl apply -f deployment/
.

        helm install postgres oci://registry-1.docker.io/bitnamicharts/postgresql --values values-postgres.yaml

Step 2)        Get a shell inside the devcontainer:

        kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash

Step 2.5)       Launch the container using host mode to use local network:

        docker run -it --rm --network host mysite /bin/bash 


Step 3)        Initialize the database:

        python3 ./manage.py migrate
        
Step 4)        Create Supeuser:

        python3 ./manage.py createsuperuser

Step by step instructions for how to delete this application.   
    Step 1)

        kubectl delete -f deployment/ 

Removes all resources

   Step 2)   

        helm uninstall postgres

Uninstalls postgres container but keeps the data in the pvc.

This repository has the starter code for CIS-92.

By Anthony L Frey

