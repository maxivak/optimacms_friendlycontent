module Optimacms::Friendlycontent
  class Configuration
    attr_accessor :yaml_config


    def initialize
      init_config

    end



    def init_config
      #return nil unless @yaml_config.nil?

      #load_config

    end

    def load_config
      raise 'obsolete'
      #@yaml_config = Rails.application.config_for(:content_remote)

      @yaml_config = YAML.load_file(File.join(Rails.root, 'config/content_remote.yml'))


      @yaml_config ||= {}
    end
  end
end