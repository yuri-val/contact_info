require "contact_info/engine"

module ContactInfo
  module ClassMethods
    def has_contact_info(types = %w(address email phone))
      types.each do |type|
        define_method(type) { puts "You call method #{type}!" }
      end
    end
  end
end