# frozen_string_literal: true

require 'json'
require 'rest-client'

module RetailCRM
  # Base class with credentials
  class Client
    attr_accessor :api_url, :api_key, :versioned_base_path, :base_path

    def initialize(url, key)
      @api_url = url
      @api_key = key
      @base_path = "#{url}/api"
      @versioned_base_path = "#{@base_path}/v5"
    end
  end
end
