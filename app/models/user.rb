class User < ApplicationRecord
    before_save { self.email = self.email.downcase }
    #保存するまえに大文字を小文字に直して処理する
    
    validates :name,  presence: true, length: {maximum: 50}
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX },
     uniqueness: true
     
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    
    # 渡された文字列をハッシュで返す
    def User.digest(string)
     cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
     BCrypt::Password.create(string, cost: cost)
    end
end
