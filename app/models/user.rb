class User < ApplicationRecord
    validates :uname, presence:true, length:{minimum:3,maximum:30}
    before_save {self.uemail=uemail.downcase}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates:uemail,presence:true,length:{maximum:105},uniqueness:{case_sensitive:false },format:{with:VALID_EMAIL_REGEX}
    has_secure_password
end
