# module Cardworld; end
# module Cardworld::MyMiddleware; end

module Cardworld
  module Middleware
    class MyMiddleware
      def initialize(app)
        @app = app
      end

      def call(env)
        pp "before call (#{self.class})"
        res = @app.call(env)
        pp "after call (#{self.class})"
        res
      end
    end
  end
end
