class Team < ApplicationRecord
    belongs_to :competition, optional: true

    #def as_json(options={})
       #h = super(options)
       #h[:date_fundation] = (I18n.l(self.date_fundation) unless self.date_fundation.blank?)
       #h
    #end

    def tecnico
        "Felipao"
    end

    def as_json(options={})
       super(methods: :tecnico, root:true, except: [:created_at, :updated_at, :competition_id])
    end
end
