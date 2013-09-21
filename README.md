##Auto generate rails project based on [mongo](http://www.mongodb.org/), [backboneJs](http://backbonejs.org/), [bootstrap css](http://getbootstrap.com/).    

Let you become a professional Rails programmer only one minute !   

## Installation

Add this line to your application's Gemfile:

    gem 'rails_mongo_backbone_bootstrap_tmpl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_mongo_backbone_bootstrap_tmpl

## Usage
	
	Usage:
		rmbb_generator new

	Options:
		-p, [--app-path=APP_PATH]  # where you want your rails application placed to
		-d, [--db-name=DB_NAME]    # set database name
		-r, [--rvmrc=RVMRC]        # create .rvmrc file with rvmrc string value

	Auto create new rails app based on mongo , devise, backboneJs, bootstrap

	Sample:  
	1. To create new rails app and place it to current user home path.  
		 rmbb_generator new YOUR_APP_NAME -p "~/"  

	2. To create new rails app and using a special db name.   
		 rmbb_generator new YOUR_APP_NAME -p "~/" -d "YOUR_DB_NAME"  

	3. To create new rails app and using a special rmv gemset.  
		 rmbb_generator new YOUR_APP_NAME -p "~/" -d "YOUR_DB_NAME" -r "rvm use YOUR_RUBY_VERSION_xxx@GEM_SET_NAME"  

	Last: 
	1. cd to new app path. (Before do this, i suggest you to create a independent gemset for this new app, then add a .rvmrc file to this app path.) 
	2. run 'bundle install' and install all gems.  
	3. run 'rails s' to start your professional rails journey. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
