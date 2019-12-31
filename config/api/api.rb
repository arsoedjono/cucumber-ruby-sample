# frozen_string_literal: true

require 'httparty'
require 'jsonpath'

require 'api/request'
require 'api/response'

Before do
  Request.base_url = ENV['API_BASE_URL']
  Request.timeout = 300
end
