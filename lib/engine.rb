module Optimacms::Friendlycontent
  class Engine < ::Rails::Engine
    isolate_namespace Optimacms::Friendlycontent

    config.watchable_dirs['lib'] = [:rb] if Rails.env.development?
    #config.watchable_dirs['app/helpers'] = [:rb] if Rails.env.development?

    config.autoload_paths += Dir["#{Optimacms::Friendlycontent::Engine.root}/lib/"]
    config.autoload_paths += Dir["#{Optimacms::Friendlycontent::Engine.root}/lib/**/"]

    config.autoload_paths += Dir["#{Optimacms::Friendlycontent::Engine.root}/app/helpers/optimacms/friendlycontent/"]

    config.autoload_paths += Dir["#{Optimacms::Friendlycontent::Engine.root}/lib/optimacms/friendlycontent/"]
    config.autoload_paths += Dir["#{Optimacms::Friendlycontent::Engine.root}/lib/optimacms/friendlycontent/**/"]



    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end


  end
end
