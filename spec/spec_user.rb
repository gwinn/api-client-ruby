# frozen_string_literal: true

require_relative 'spec_helper'

require_relative '../lib/retailcrm'
require_relative '../lib/endpoint/user'

describe RetailCRM do
  before do
    @mock_url = 'https://demo.retailcrm.pro'
    @mock_key = 'some@encoded$string'

    @client = RetailCRM::Client.new(@mock_url, @mock_key)
  end

  describe 'when calling user groups list' do
    it 'just works' do
      stub_request(:get, /retailcrm/)

      entity = RetailCRM::User.new(@client)
      request = entity.user_groups
      response = JSON.parse(request)

      _(response['errors']).must_be_nil
      _(response['success']).must_equal true
    end


    # it 'correctly returns a list without parameters' do
    #   user_request = Minitest::Mock.new
    #   user_request.expect
    #   user_request = RetailCRM::User.new(@client)
    #   response = JSON.parse(user_request.user_groups)
    #
    #   _(response['errors']).must_be_nil
    #   _(response['success']).must_equal true
    #
    #   @client.verify
    # end

    # it 'correctly returns a list with parameters' do
    #   user_request = RetailCRM::User.new(@client)
    #   response = JSON.parse(user_request.user_groups(50, 2))
    #
    #   _(response['errors']).must_be_nil
    #   _(response['success']).must_equal true
    # end

    # it 'fails if parameters is invalid' do
    #   user_request = RetailCRM::User.new(@client)
    #   response = JSON.parse(user_request.user_groups(15, 0))
    #
    #   _(response['errorMsg']).must_be_instance_of String
    #   _(response['success']).must_equal false
    # end
  end
end
