class Api::ContactsController < ApplicationController
  def index
    @contacts = ContactList.all
    render "index.json.jb"
  end

  def create
    @contact = ContactList.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      bio: params[:bio],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    if @contact.save
      render "show.json.jb"
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @contact = ContactList.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @contact = ContactList.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.bio = params[:bio] || @contact.bio
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    if @contact.save
      render "show.json.jb"
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @contact = ContactList.find_by(id: params[:id])
    @contact.destroy
    render json: { message: "Product successfully deleted." }
  end
end
