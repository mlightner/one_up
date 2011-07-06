module OneUp
  module GooglePlus

    # A representation of a Google+ user circle
    class Circle

      attr_reader :user
      attr_accessor :members, :name, :info

      def initialize(user, circle = nil)
        @user = user
        raise "Invalid user: #{user}" unless user.kind_of?(User)
        @members = Hash.new
      end

    end

  end
end
