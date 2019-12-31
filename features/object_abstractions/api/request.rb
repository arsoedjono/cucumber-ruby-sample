# frozen_string_literal: true

class Request
  class << self
    attr_accessor :base_url, :timeout, :headers, :body

    def send(method, url, body = nil)
      options = { headers: headers, timeout: timeout, body: body }
      response = HTTParty.send(method.downcase, base_url + url, options)

      ::Response.save(response)
    end
  end
end
