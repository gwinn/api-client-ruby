# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/spec'
require 'json'

require_relative '../lib/retailcrm'
require_relative '../lib/endpoint/user'

describe RetailCRM do
  before do
    @client = RetailCRM::Client.new('https://integrator.retailcrm.ru', 'Bz9SLca32BYgv2R6yQMlDCUSgOPcbXix')
  end

  describe 'when calling user groups list' do
    it 'correctly returns a list without parameters' do
      user_request = RetailCRM::User.new(@client)
      response = JSON.parse(user_request.user_groups)

      _(response['errors']).must_be_nil
      _(response['success']).must_equal true
    end

    it 'correctly returns a list with parameters' do
      user_request = RetailCRM::User.new(@client)
      response = JSON.parse(user_request.user_groups(50, 2))

      _(response['errors']).must_be_nil
      _(response['success']).must_equal true
    end

    it 'fails if parameters is invalid' do
      user_request = RetailCRM::User.new(@client)
      response = JSON.parse(user_request.user_groups(15, 0))

      _(response['errorMsg']).must_be_instance_of String
      _(response['success']).must_equal false
    end
  end
end
