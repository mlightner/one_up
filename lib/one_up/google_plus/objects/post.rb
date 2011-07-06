module OneUp
  module GooglePlus
    module Objects

      # A representation of a Google+ post
      class Post

        include OneUp::GooglePlus::Objects::Base

        # The user or object which created this post
        object_source :poster
        acts_as_thread
        has_attachment
        is_scoped

        attr_accessor :text        

      end
    end
  end
end
