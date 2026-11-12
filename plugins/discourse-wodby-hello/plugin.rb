# frozen_string_literal: true

# name: discourse-wodby-hello
# about: A test plugin for Wodby's buildable Discourse
# version: 0.1.0
# authors: Wodby
# url: https://github.com/wodby2/tests-discourse-buildable

after_initialize do
  Discourse::Application.routes.prepend do
    get "/wodby-hello" => proc { [200, { "Content-Type" => "text/plain" }, ["Hello from discourse-wodby-hello"]] }
  end
end
