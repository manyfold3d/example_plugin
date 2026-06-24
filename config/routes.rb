HelloWorld::Engine.routes.draw do
  root to: ->(env) { [200, {}, ["hello world"]] }
end
