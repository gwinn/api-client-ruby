# frozen_string_literal: true

module RetailCRM
  # User resources
  class User
    attr_reader :client

    # RetailCRM::Client
    def initialize(client)
      @client = client
    end

    # @param [int] limit
    # @param [int] page
    #
    # @return string
    def user_groups(limit = 20, page = 1)
      begin
        http_response = RestClient::Request.execute(
          method: :get,
          url: "#{@client.versioned_base_path}/user-groups",
          headers: {
            "x-api-key": @client.api_key, params: { limit: limit, page: page }
          }
        )

        http_response.body
      rescue RestClient::ExceptionWithResponse => exception
        exception.response
      end
    end
  end
end
