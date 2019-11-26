class Person < ApplicationRecord
    has_many :compliments
    accepts_nested_attributes_for :compliments
end
