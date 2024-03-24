class LabPolicy
  attr_reader :user, :lab

  def initialize(user, lab)
    @user = user
    @lab = lab
  end

  def update?
    user.admin? || !lab.published?
  end
  def show
    @user = authorize User.find(params[:id])
  end

end
