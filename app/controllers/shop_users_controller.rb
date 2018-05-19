class ShopUsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    params.permit!
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to shop_users_url, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    params.permit!
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to shop_users_url, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def change_user_password
    @user= User.find_by_id(params[:user_id])
    @user.update(password: params[:password],password_confirmation: params[:password_confirmation])
  end
  
  def contact_us
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end


# arr = [-4,  5,  5, -7,  4, -1,  8, -6]
# def max_subarray( arr )
#   max = 0

#   # choose a starting point in the array
#   (0..arr.length-1).each do |start|
#     result = 0
#     # loop forward through array elements
#     (start..arr.length-1).each do |num|
#       result += arr[num]
#       max = result if result > max
#     end
#   end

#   puts max
# end