module HelenaAdministration
  module Questions
    class CheckboxGroupsController < QuestionsController
      private

      def add_ressources
        @question.sub_questions.build
      end

      def permited_params
        [:required, sub_questions_attributes: sub_questions_attributes]
      end
    end
  end
end
