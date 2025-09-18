# frozen_string_literal: true

module Tutorial
  # Greeter class for handling user greetings based on roles
  class Greeter
    def initialize(users)
      @users = if users.is_a?(Hash)
                 users
               else
                 { users => :user }
               end
    end

    def greet_roles
      @users.map do |name, role|
        role == :admin ? "Welcome back, admin #{name}" : "Hello, #{name}"
      end
    end

    def greet(name = nil)
      if name
        "Hello, #{name}"
      else
        greet_roles.first || 'Hello, World'
      end
    end
  end
end
