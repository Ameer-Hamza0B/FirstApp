class User < ApplicationRecord
end

class User < ApplicationRecord
    has_many :students_teachers
    has_many :teachers, through: :students_teachers
  end
  