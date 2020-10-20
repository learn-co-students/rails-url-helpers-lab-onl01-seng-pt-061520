class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def change_activation
    self.update(active: !self.active)
  end
end