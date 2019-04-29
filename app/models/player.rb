class Player < ApplicationRecord
    belongs_to :team

    def as_json(options={})
        super(except: [:created_at, :updated_at], root:true, include: { team: { only: :name }})
     end
end
