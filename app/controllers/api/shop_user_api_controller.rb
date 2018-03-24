class Api::ShopUserApiController < ActionController::API
	def get_user_info
		my_details = [{id: 1, title: "my name", name: "yogendra singh"}]
		render :json => {:status => 200, :data => my_details}
	end
end 
