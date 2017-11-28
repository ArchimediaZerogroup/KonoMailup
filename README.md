**KonoMailup**

**Description**<br>
KonoMailup is a Mailup layer for rails applications that
provides configuration and saving of user tokens; <br>
with mailup gems for autentication/authorization and api connector


**Installation**

Add To your Gemfile

     gem 'kono_mailup'
     
OR Install directly

     gem install kono_mailup
     
Then in your rail application folder  

     bin/rails g kono_mailup:install
     bin/rake kono_mailup:install:migrations
     
Remember to configure the file created in the initializers     