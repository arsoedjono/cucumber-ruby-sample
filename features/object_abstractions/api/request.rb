# frozen_string_literal: true

class Request
  class << self
    attr_accessor :base_url, :timeout, :headers, :body
    attr_reader :response

    def send(method, url, body = nil)
      options = { headers: headers, timeout: timeout, body: body }
      @response = HTTParty.send(method.downcase, base_url + url, options)
    end
  end
end
