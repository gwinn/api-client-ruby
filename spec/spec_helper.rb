# frozen_string_literal: true

require 'json'
require 'minitest/autorun'
require 'minitest/spec'
require 'webmock/minitest'

WebMock.disable_net_connect!(allow_localhost: true)
