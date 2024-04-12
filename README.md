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
Step 1)

        kubectl apply -f deployment/


Step 2)        Initialize the database and create superuser:

        kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash
        
Step by step instructions for how to delete this application.   
    Step 1)

        kubectl delete -f deployment/
    Removes all resources
 

    This repository has the starter code for CIS-92.     
           

By Anthony L Frey

