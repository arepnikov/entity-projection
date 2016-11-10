module EntityProjection
  module Controls
    module Projection
      # class Example
      #   include EntityProjection
      #   include Controls::Message

      #   apply SomeMessage do |some_message|
      #     some_message.some_attribute = 'some value set by handler'
      #   end
      # end

      module ApplyMethod
        class Example
          include EntityProjection

          def apply(event_data)
            entity.some_attribute = event_data.data[:some_attribute]
          end
        end
      end

      # module BlockAndHandleMethod
      #   class Example
      #     include Messaging::Handle
      #     include Controls::Message

      #     handle SomeMessage do |some_message|
      #       some_message.some_attribute = 'some attribute value set by handler'
      #     end

      #     def handle(event_data)
      #       event_data.data = 'some data value set by handler'
      #     end
      #   end
      # end

      module Anomaly
        module NoHandle
          class Example
            include EntityProjection
          end
        end
      end
    end
  end
end
