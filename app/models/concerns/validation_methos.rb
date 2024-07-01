module PersonValidations
    extend ActiveSupport::Concern

    included do
        validates :first_name, :last_name, :age, :email, presence: true
    end
end
