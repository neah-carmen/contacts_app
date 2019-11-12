class Api::ContactsController < ApplicationController
  def index
    @contacts = ContactList.all
    render "index.json.jb"
  end

  def create
    @contact = ContactList.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    render "show.json.jb"
  end

  def show
    @contact = ContactList.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @contact = ContactList.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.save
    render "show.json.jb"
  end

  def destroy
    @contact = ContactList.find_by(id: params[:id])
    @contact.destroy
    render json: { message: "Product successfully deleted." }
  end
end
