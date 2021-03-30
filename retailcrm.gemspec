# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name         = 'retailcrm'
  s.version      = '2.0.0'
  s.date         = '2021-03-29'
  s.summary      = 'RetailCRM Rest API client'
  s.description  = 'Library for interact with RetailCRM API'
  s.authors      = ['Alex Lushpai']
  s.email        = 'lushpai@gmail.com'
  s.files        = %w[lib/retailcrm.rb lib/endpoint/user]
  s.homepage     = 'http://rubygems.org/gems/retailcrm'
  s.license      = 'MIT'
  s.requirements = 'rest-client'
end
