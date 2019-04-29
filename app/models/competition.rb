class Competition < ApplicationRecord
    has_many :teams
    accepts_nested_attributes_for :teams
    
    
    def as_json(options={})
        super(except: [:created_at, :updated_at])
        
    end
    
end
 