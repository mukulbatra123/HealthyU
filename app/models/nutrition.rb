class Nutrition < ActiveRecord::Base
    def calories
        (((10 * ((45/100) * self.weight.to_i)) + (6.25 * (2.54 * self.height.to_i))) - (5* self.age.to_i)) +5
    end
end
