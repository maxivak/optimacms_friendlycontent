require "engine"
require "configuration"

module Optimacms::Friendlycontent


  # config
  class << self
    attr_accessor :config
  end

  def self.config
    @config ||= Configuration.new
  end

  def self.reset
    @config = Configuration.new
  end

  def self.configure
    yield(config) if block_given?
  end


end
