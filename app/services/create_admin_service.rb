class CreateAdminService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.admin_email) do |user|
        user.admin = Rails.application.secrets.admin
        user.name = Rails.application.secrets.admin_name
        user.password = Rails.application.secrets.admin_password
        user.password_confirmation = Rails.application.secrets.admin_password
      end
  end
end
