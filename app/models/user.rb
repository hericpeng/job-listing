class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    def admin?
        is_admin
    end

    def display_name
        if username.present?
            username
        else
            email.split('@').first
        end
  end

    has_many :resumes



end
