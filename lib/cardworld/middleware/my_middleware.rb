# module Cardworld; end
# module Cardworld::MyMiddleware; end

module Cardworld
  module Middleware
    class MyMiddleware
      def initialize(app)
        @app = app
      end

      def call(env)
        req = ActionDispatch::Request.new env
        res = @app.call(env)
        pp req.flash
        res
      end
    end
  end
end
