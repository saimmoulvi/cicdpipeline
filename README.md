# cicdpipeline

## Task 1: Set Up a Simple HTML Project   
Create a simple HTML project and push it to a GitHub repository.

(*Kindly refer index.html*)

## Task 2: Set Up an AWS EC2/Local Linux Instance with Nginx

- Install Nginx and start     
`sudo apt update`   
`sudo apt install nginx -y`   
`sudo systemctl start nginx`   

- Update the default Nginx Configuration   

`sudo nano /etc/nginx/sites-available/default`   

Update the root to /var/www/html:

```
server {
    listen 80;
    server_name your_domain_or_ip;

    root /var/www/html;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

- Restart nginx to apply the changes   
  `sudo systemctl restart nginx`   

## Task 3: Write a Python Script to Check for New Commits

  (*Refer commitchecker.py*)

## Task 4: Write a Bash Script to Deploy the Code

  (*Refer deploy.sh*)

## Task 5: Set Up a Cron Job to Run the Python Script    

- Open the cron job editor:       
  
  `crontab -e`    

- Add the following script:    

   `* * * * * /home/saimmoulvi/commitchecker/commitchecker.py >> /home/saimmoulvi/commitchecker/commitchecker_cronjob.log 2>&1`
