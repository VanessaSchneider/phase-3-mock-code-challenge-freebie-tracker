class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

def received_one?(item_name)
if self.freebies.find_by(item_name: item_name)
    true
else
    false
end
end


def give_away(dev, freebie)

if freebie.dev == self
    freebie.update(dev_id: dev.id)

end
    end
        end

