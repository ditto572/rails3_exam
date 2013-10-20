class Member < ActiveRecord::Base
  attr_accessible :number, :name, :full_name, :email, :birthday, :gender, :administrator

  class << self
    def search(query)
      rel = order("number")
      if query.present?
        rel = rel.where("name LIKE ? OR full_name LIKE ?",
                "%#{query}%", "%#{query}%")
      end
      rel
    end
  end
end
