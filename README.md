# RailsMongoBackboneBootstrapTmpl


TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'rails_mongo_backbone_bootstrap_tmpl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_mongo_backbone_bootstrap_tmpl

## Usage

Run below command to create new rails app:   
	rmbb_generator new YOUR_APP_NAME -p "YOUR APP WILL BE PLACEED PATH"
Run below command to view help:  
	rmbb_generator help  
	rmbb_generator help new
	
	Usage:
		rmbb_generator new

	Options:
		-p, [--app-path=APP_PATH]  # where you want your rails application placed to
		-d, [--db-name=DB_NAME]    # set database name
		-r, [--rvmrc=RVMRC]        # create .rvmrc file with rvmrc string value

	Auto create new rails app based on mongo , devise, backboneJs, bootstrap

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
