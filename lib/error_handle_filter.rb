require "error_handle_filter/version"

module ErrorHandleFilter
  class ErrorHandleFilter
    def initialize app
      @app = app
    end

    def call env
      begin
        @app.call(env)
      rescue
        [500, { 'Content-Type' => 'application/json' }, [JSON.dump(message: "unexpected error")]]
      end
    end
  end
end
