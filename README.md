# My CIS-92 Project 

This is my project.

ENV_VARS :

| Name |  Default |  Description
| --- | --- | --- |
| Port | 8000 | Port used by django |
|STUDENT_NAME| Anthony Frey | My Name |
|SITE_NAME | Name of site | www.anthonyfreywashere.com |
|DATA_DIR | /data | Directory mount for Persistent Volume |
| DEBUG | 1 | ? |
|SECRET_KEY | Top Secret | Classified


Step by step instructions for how to deploy your application on a Kubernetes cluster.           
Step 1)        Apply full deployment:

        kubectl apply -f deployment/

Step 2)        Get a shell inside the devcontainer:

        kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash

Step 3)        Initialize the database:

        python manage.py migrate
        
Step 4)        Create Supeuser:

        python manage.py createsuperuser

Step by step instructions for how to delete this application.   
    Step 1)

        kubectl delete -f deployment/
    Removes all resources
 

    This repository has the starter code for CIS-92.     
           

By Anthony L Frey

