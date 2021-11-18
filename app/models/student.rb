class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.search(name)
    self.all.filter{|student| student.first_name.downcase.include?(name.downcase) || student.last_name.downcase.include?(name.downcase)}
    # From solution branch: 
    # self.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}", "%#{name}")
  end

end
