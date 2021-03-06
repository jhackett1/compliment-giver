class Person < ApplicationRecord

  devise :omniauthable, omniauth_providers: [:google_oauth2]
  
  has_many :compliments
  accepts_nested_attributes_for :compliments

  def self.from_omniauth(access_token)
    data = access_token.info
    user = Person.where(email: data['email']).first
    unless user
        user = Person.create(
          name: data['name'],
          email: data['email'],
          image: data['image']
          # password: Devise.friendly_token[0,20]
        )
    end
    user
  end


end
