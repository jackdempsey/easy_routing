module ActionDispatch
  module Routing
    class Mapper
      def actions_for(controller_action_pairs)
        controller_action_pairs.each do |controller, actions|
          actions.each do |action_string|
            action = action_string.split(/\W/).first
            match action_string => "#{controller}##{action}", :as => action
          end
        end
      end
    end
  end
end
