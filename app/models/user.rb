class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable, omniauth_providers: [:linkedin]

  has_many :contacts

      def self.from_omniauth(access_token)
          data = access_token.info
        
          
          user = User.where('lower(email) = ?',  data['email'].downcase).first
          puts "*********************"
          puts data['email']
          puts "*********************"
          # Uncomment the section below if you want users to be created if they don't exist
          unless user
              user = User.create(
                fname: data['first_name'],
                lname: data['last_name'],
                email: data['email'].downcase, 
                location: data["location"]["name"],
                password: Devise.friendly_token[0,20]
              )
          end
          user
      end
end
