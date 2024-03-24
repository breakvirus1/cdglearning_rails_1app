class User < ApplicationRecord
  has_many :labs
attr_accessor :login

  # "getter"
  # def login
  #   @login
  # end

  # "setter"
  # def login=(str)
  #  @login = str
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable
    devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :authentication_keys => [:email]

  # def self.find_for_database_authentication warden_condition
  #   conditions = warden_condition.dup
  #   login = conditions.delete(:login)

  #   where(conditions).where(
  #     ["lower(username) = :value OR lower(email) = :value",
  #     { value: conditions(:email).strip.downcase}]).first
  # end


end
