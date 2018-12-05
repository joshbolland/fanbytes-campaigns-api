class Campaign < ActiveRecord::Base
  class Create < Trailblazer::Operation
    model Campaign, :create

    contract do
      property :body
      property :author_id

      validates :body, presence: true
    end

    def process(params)
      validate(params[:comment]) do
        contract.save
      end
    end
  end
end
