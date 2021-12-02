class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.each do |freebie|
            if freebie.item_name == item_name
                return true
            end
        end
        return false
    end

    def give_away(dev, freebie)
        if freebie.dev_id == self.id
            freebie.update(dev_id: dev.id)            
        else
            puts "You can't give away what's not yours, Rick!"
        end
    end
end
