class Cat
  include Mongoid::Document
  include Mongoid::Paperclip
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              :type => String, :null => false, :default => ""
  field :encrypted_password, :type => String, :null => false, :default => ""

  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

  #the stuff we want
  
  field :name, :type => String
  validates_presence_of :name
  field :age, :type => Integer, :default => 20
  field :gender, :type => String
  field :orientation, :type => String
  field :hometown, :type => String
  field :looking_for, :type => String
  field :relationship_status, :type => String
  field :religious_views, :type => String
  field :interests, :type => String
  field :food, :type=> String
  field :picture, :type => String

  has_mongoid_attached_file(:avatar, {:styles => 
    {:thumb => ['150x150', :jpg],
     :medium => ['300x300', :jpg]}, :default_url => "/images/:style/missing.png"})
  attr_accessible :avatar 

  attr_accessible :name, :age, :gender, :orientation, :hometown,
  :looking_for, :relationship_status, :religious_views, :interests,
  :food, :picture

  attr_accessible :email, :password, :password_confirmation, :remember_me


  ## Encryptable
  # field :password_salt, :type => String

  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  ## Token authenticatable
  # field :authentication_token, :type => String
end
