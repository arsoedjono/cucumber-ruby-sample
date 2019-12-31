# frozen_string_literal: true

class Response
  class << self
    include ::RSpec::Matchers

    attr_reader :code, :body, :raw_body

    def save(response)
      @code = response.code
      @raw_body = response.body
      @body = JSON.parse(@raw_body) if @raw_body
    end

    def assert_status(status)
      expect(code).to eq(status)
    end
  end
end
