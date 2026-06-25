module ExamplePlugin
  class HelloController < ApplicationController
    def index
      # Use policy_scope when fetching objects to automatically apply permission checks
      @models = policy_scope(Model)
    end
  end
end
