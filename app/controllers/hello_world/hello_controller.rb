module HelloWorld
  class HelloController < ApplicationController
    def index
      skip_policy_scope
    end
  end
end
