class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  %w(index? create? new? update? edit? destroy? show?).each do |method|
    define_method method do
      true
    end
  end
end
