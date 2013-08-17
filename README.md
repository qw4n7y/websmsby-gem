# Websmsby

Websms.by API

## Installation

Add this line to your application's Gemfile:

    gem 'websmsby', :git => "git@github.com:qw4n7y/websmsby-gem.git"

And then execute:

    $ bundle

Create a Websmsby initializer for your application.

    rails generate websmsby:install

Paste your credentials in config/initializers/websmsby.rb

Communicate with webmsm.by API according with http://websms.by/index.php?r=site/doc with calling the Websmsby.api method, which would return json websms.by response.

    Websmsby.api( request, params )

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
