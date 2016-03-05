Boilerplate for a Meteor-based UPHS app. Includes oAuth2 login, recommended meteor packages, bootstrap template, and optional dev->prod deployment script.

# Installation

### Downloading
1. Think of your app's nickname such as yourapp. Create /apps/yourapp and cd into it
2. Clone this boilerplate repo and rename it /apps/yourapp/dev

### Customize files
- change 'boilerplate' to yourapp in the following files:
  - server.sh
  - deploy.sh
  - sync_db.sh
- set oauth keys in settings.json
- change both port numbers (dev and prod) in server.sh


### Change the remote repo URL
- create the repo called yourapp
- `git remote set-url origin <yourapp's url>`
- git add --all . && git commit -am "Init" && git push origin master

### Setup prod
- `cd /apps/yourapp`
- `git clone <yourapp's url>`
- `/bin/mv yourapp prod`
- `cp dev/settings.json prod/`
- in the prod/settings.json file, change the contents


# Running the app
- `chmod 755 /apps/yourapp/dev/server.sh`
- `/apps/yourapp/dev/server.sh &`

