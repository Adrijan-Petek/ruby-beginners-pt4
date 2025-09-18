module Tutorial
  class Greeter
    def initialize(users); @users=users; end
    def greet_roles
      @users.map do |name, role|
        role==:admin ? "Welcome back, admin #{name}" : "Hello, #{name}"
      end
    end
  end
end
