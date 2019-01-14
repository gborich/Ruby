class Player < ApplicationRecord
    validates :name, length: {minimum: 3, message: 'короткое имя'}

end
