module Tutorial
  class Greeter
    def initialize(users)
      if users.is_a?(Hash)
        @users = users
      else
        @users = {users => :user}
      end
    end
    def greet_roles
      @users.map do |name, role|
        role==:admin ? "Welcome back, admin #{name}" : "Hello, #{name}"
      end
    end
    def greet(name = nil)
      if name
        "Hello, #{name}"
      else
        greet_roles.first || "Hello, World"
      end
    end
  end
end
