#!/bin/bash

# Update package manager
sudo apt-get update

while true; do
  echo "================================================="
  echo "Please select one of the following options:"
  echo "1. Browsers (Google Chrome, Brave)"
  echo "2. Web Frameworks (React, Vue, Angular, Express)"
  echo "3. Database Management (MongoDB, MySQL)"
  echo "4. Code Editors (VS Code, Atom, Sublime Text)"
  echo "5. Task Runners (Grunt, Gulp)"
  echo "6. Remote Desktop Software (TeamViewer, Anydesk)"
  echo "7. All"
  echo "8. Exit"
  echo "================================================="
  read -p "Enter option number: " option

  case $option in
    "1")
      read -p "Enter browser name (chrome or brave): " browser
      if [ "$browser" = "chrome" ]; then
        # Install Google Chrome
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i google-chrome-stable_current_amd64.deb
        sudo apt-get -f install
      elif [ "$browser" = "brave" ]; then
        # Install Brave browser
        sudo apt install apt-transport-https curl
        curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
        echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
        sudo apt update
        sudo apt install brave-browser
      else
        echo "Invalid browser name"
      fi
      ;;
    "2")
      read -p "Enter framework name (react, vue, angular, express): " framework
      if [ "$framework" = "react" ]; then
        # Install React.js
        sudo npm install react
      elif [ "$framework" = "vue" ]; then
        # Install Vue.js
        sudo npm install vue
      elif [ "$framework" = "angular" ]; then
        # Install Angular.js
        sudo npm install @angular/cli
      elif [ "$framework" = "express" ]; then
        # Install Express.js
        sudo npm install express
      else
        echo "Invalid framework name"
      fi
      ;;
    "3")
      read -p "Enter database name (mongodb or mysql): " db
      if [ "$db" = "mongodb" ]; then
        # Install MongoDB
        sudo apt-get install -y mongodb
      elif [ "$db" = "mysql" ]; then
        # Install MySQL
        sudo apt-get install -y mysql-server
      else
        echo "Invalid database name"
      fi
      ;;
    "4")
      read -p "Enter editor name (vscode, atom, sublime): " editor
      if [ "$editor" = "vscode" ]; then
        # Install VS Code
        sudo apt-get install -y code
      elif [ "$editor" = "atom" ]; then
        # Install Atom
        sudo apt-get install -y atom
      elif [ "$editor" = "sublime" ]; then
        # Install Sublime Text
        wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
        echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
        sudo apt-get update && sudo apt-get install sublime-text
      else
        echo "Invalid editor name"
      fi
      ;;
    "5")
      read -p "Enter task runner name (grunt or gulp): " task_runner
      if [ "$task_runner" = "grunt" ]; then
        # Install Grunt
        sudo npm install -g grunt-cli
      elif [ "$task_runner" = "gulp" ]; then
        # Install Gulp
        sudo npm install -g gulp-cli
      else
        echo "Invalid task runner name"
      fi
      ;;
    "6")
      read -p "Enter software name (teamviewer or anydesk): " software
      if [ "$software" = "teamviewer" ]; then
        # Install TeamViewer
        wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
        sudo apt install -y ./teamviewer_amd64.deb
      elif [ "$software" = "anydesk" ]; then
        # Install Anydesk
        wget https://download.anydesk.com/linux/anydesk_5.5.4-1_amd64.deb
        sudo apt install -y ./anydesk_5.5.4-1_amd64.deb
      else
        echo "Invalid software name"
      fi
      ;;
    "7")
      # Install Google Chrome
      wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
      sudo dpkg -i google-chrome-stable_current_amd64.deb
      sudo apt-get -f install

      # Install Brave browser
      sudo apt install apt-transport-https curl
      curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
      echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
      sudo apt update
      sudo apt install brave-browser

      # Install Node.js
      curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
      sudo apt-get install -y nodejs

      # Install npm (Node Package Manager)
      sudo apt-get install -y npm

      # Install React.js
      npm install react

      # Install Vue.js
      npm install vue

      # Install Angular.js
      npm install @angular/cli

      # Install Express.js
      npm install express

      # Install MongoDB
      sudo apt-get install -y mongodb

      # Install MySQL
      sudo apt-get install -y mysql-server

      # Install VS Code
      sudo apt-get install -y code

      # Install Atom
      sudo apt-get install -y atom

      # Install Sublime Text
      wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
      echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
      sudo apt-get update && sudo apt-get install sublime-text

      # Install Git
      sudo apt-get install -y git

      # Install Grunt
      npm install -g grunt-cli

      # Install Gulp
      npm install -g gulp-cli

      # Install Postman
      sudo snap install postman

      # Install TeamViewer
      wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
      sudo apt install -y ./teamviewer_amd64.deb

      # Install Anydesk
      wget https://download.anydesk.com/linux/anydesk_5.5.4-1_amd64.deb
      sudo apt install -y ./anydesk_5.5.4-1_amd64.deb

      ;;
    "8")
      break
      ;;
    *)
      echo "Invalid option"
  esac
done
