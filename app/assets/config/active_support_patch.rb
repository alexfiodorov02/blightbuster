# config/initializers/active_support_patch.rb
module ActiveSupport
  class Deprecation
    public :warn
  end
end
