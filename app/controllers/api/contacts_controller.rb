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
    render "show.json.jb"
  end

  def destroy
    @contact = ContactList.find_by(id: params[:id])
    @contact.destroy
    render json: { message: "Product successfully deleted." }
  end

  # def parse_contact(db_extract, contact_hash)
  #   contact_hash[:first_name] = db_extract.first_name
  #   contact_hash[:last_name] = db_extract.last_name
  #   contact_hash[:email] = db_extract.email
  #   contact_hash[:phone_number] = db_extract.phone_number
  # end

  # def first_contact_call
  #   db_extract = ContactList.first
  #   @first_contact = {}
  #   parse_contact(db_extract, @first_contact)

  #   return @first_contact
  # end

  # def display_first_contact
  #   first_contact_call

  #   render "first_contact.json.jb"
  # end

  # def second_contact_call
  #   db_extract = ContactList.second
  #   @second_contact = {}
  #   parse_contact(db_extract, @second_contact)

  #   return @second_contact
  # end

  # def display_second_contact
  #   second_contact_call

  #   render "second_contact.json.jb"
  # end

  # def third_contact_call
  #   db_extract = ContactList.third
  #   @third_contact = {}
  #   parse_contact(db_extract, @third_contact)

  #   return @third_contact
  # end

  # def display_third_contact
  #   third_contact_call

  #   render "third_contact.json.jb"
  # end

  # def display_all_contact
  #   first_contact_call
  #   second_contact_call
  #   third_contact_call

  #   @all_contacts = []
  #   @all_contacts << @first_contact
  #   @all_contacts << @second_contact
  #   @all_contacts << @third_contact

  #   render "all_contact.json.jb"
  # end
end
