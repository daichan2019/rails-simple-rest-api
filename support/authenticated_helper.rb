module AuthenticationHelper
  def authenticate_stub
    @user_info = [
      {
        'name' => '佐藤大地',
        'email' => 'hoge@example.com',
      }
    ]

    allow_any_instance_of(ApplicationController).to receive(:authenticate!).and_return(@user_info)
  end
end
