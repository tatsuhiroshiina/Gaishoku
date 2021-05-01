class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource)
   root_path # サインアウト後のリダイレクト先URL
 end
 def after_sign_in_path_for(resource)
   eatdays_path # ログアウト後に遷移するpathを設定
 end
end
