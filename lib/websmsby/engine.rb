module Websmsby
  class Engine < Rails::Engine
    isolate_namespace Websmsby

    config.websmsby = Websmsby

    initializer "websmsby" do |app|
      Websmsby.setup do |config|
        config.app_root = app.root
      end
    end
  end
end
