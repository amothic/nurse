require "nurse/version"
require 'rack/request'
require 'rack/response'

module Nurse
  class CatchError
    def initialize app
      @app = app
    end

    def call env
      begin
        @app.call(env)
      rescue
        response = Rack::Response.new {|r|
          r.status = 500
          r["Content-Type"] = "application/json"
          r.write '{"message": "unexpected error"}'
        }
        response.finish
      end
    end
  end
end
