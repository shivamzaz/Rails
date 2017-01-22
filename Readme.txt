

Technologies Used:
		>> Ruby on Rails(4.2.4)
		>> Ajax 


Quick Installation: 

	(1) >> Using(rbenv) in Ubuntu >=14.04/elementaryOS(freya) for Installation:

		> Before installing rbenv, you must have access to a superuser account on an Ubuntu 14.04 server. Follow steps 1-3 of this tutorial, if you need help setting this up: Initial Server Setup on Ubuntu 14.04

		When you have the prerequisites out of the way, let's move on to installing rbenv.
		Install rbenv

		install rbenv, which we will use to install and manage our Ruby installation.

		First, update apt-get:

		    sudo apt-get update

		Install the rbenv and Ruby dependencies with apt-get:

		    sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

		Now we are ready to install rbenv. The easiest way to do that is to run these commands, as the user that will be using Ruby:

		    cd
		    git clone git://github.com/sstephenson/rbenv.git .rbenv
		    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
		    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

		    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
		    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
		    source ~/.bash_profile

		Note: On Ubuntu Desktop, replace all occurrences .bash_profile in the above code block with .bashrc.

		This installs rbenv into your home directory, and sets the appropriate environment variables that will allow rbenv to the active version of Ruby.

		Now we're ready to install Ruby.
		Install Ruby

		Before using rbenv, determine which version of Ruby that you want to install. We will install the latest version, at the time of this writing, Ruby 2.2.3. You can look up the latest version of Ruby by going to the Ruby Downloads page.

		As the user that will be using Ruby, install it with these commands:

		    rbenv install -v 2.2.3
		    rbenv global 2.2.3

		The global sub-command sets the default version of Ruby that all of your shells will use. If you want to install and use a different version, simply run the rbenv commands with a different version number.

		Verify that Ruby was installed properly with this command:

		    ruby -v

		It is likely that you will not want Rubygems to generate local documentation for each gem that you install, as this process can be lengthy. To disable this, run this command:

		    echo "gem: --no-document" > ~/.gemrc

		You will also want to install the bundler gem, to manage your application dependencies:

		    gem install bundler

		Now that Ruby is installed, let's install Rails.
		Install Rails

		As the same user, install Rails with this command (you may specify a specific version with the -v option):

		    gem install rails

		Whenever you install a new version of Ruby or a gem that provides commands, you should run the rehash sub-command. This will install shims for all Ruby executables known to rbenv, which will allow you to use the executables:

		    rbenv rehash

		Verify that Rails has been installed properly by printing its version, with this command:

		    rails -v

	
		(2) Now come to the Game Directory:
			->  git clone git@github.com:shivamzaz/Game [A public project of github]
			->  cd Game
			->  bundle install
			->  rake db:create
			->  rake db:migrate
			->  rails server



Features Included:

		>> Player can Sign Up and Sign In.
		>> Automatic unique color assigned to each user which will sign up and will shown up onto the home page after login
		>> Current Max Score in the Game, which is currently being up will show in the Player home screen
		>> See other player commit(Chance) instantly.(index)
		>> Each Player homepage will shoe rest of all player activity as well. 
		>> Current user sign-in id will shown in each player homepage.


Approach:
		>> Database Schema Description: 
			>> Player(random Color(default), Player_id, Email_id, timestamps)

		>> Database Schema of Post(Commit the chance of player)
			>> Post(Player_id(foreign key), content, timestamps)

		Note: Further DataBase structure is visible in Game/db/schema.rb

		>> Render the page of Commit(chance) without reaload onto the homepage of each Player by clicking onto the give link in home page then automatic page reloading after within sec. to see other user activity

		>> Max score would be achieve by total Commit post regarding to each Player and Max Player is achieved by total Player.


