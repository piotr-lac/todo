class Task < ApplicationRecord
	validates :zadanie, presence: true, length: { minimum: 3, maximum: 20}
	validates :opis_zadania, presence: true, length: { minimum: 3, maximum: 100}
end