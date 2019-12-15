# frozen_string_literal: true

require 'jsonpath'
require 'httparty'

require 'api/request'

Before do
  Request.base_url = ENV['API_BASE_URL']
  Request.timeout = 300
end
