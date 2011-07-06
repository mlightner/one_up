require 'active_support'

module OneUp
  module GooglePlus
    module Objects

      module Base
        extend ActiveSupport::Concern
      
        included do
          attr_reader :viewer
          attr_reader :source
        end

        module InstanceMethods

          def scoped?; ! (scope.blank? rescue true); end
          def attachment?; ! (attachment.blank? rescue true); end
          def thread?; ! (thread.blank? rescue true); end

          def mine?
            viewer && source && ((viewer == source) rescue false)
          end

        end

        module ClassMethods
          def object_source(attribute_name = :source)
            alias_method attribute_name.to_sym, :source
          end

          def acts_as_thread
            attr_accessor :thread
          end

          def has_attachment
            attr_accessor :attachment
          end

          def is_scoped
            attr_accessor :scope
          end
        end
      end
    end
  end
end
