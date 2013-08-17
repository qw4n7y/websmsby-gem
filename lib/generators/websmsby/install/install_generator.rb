module Websmsby
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Websmsby initializer for your application."

      def copy_initializer
        template "websmsby.rb", "config/initializers/websmsby.rb"
      end

    end
  end
end