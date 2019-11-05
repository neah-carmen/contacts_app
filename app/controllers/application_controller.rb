class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  def parse_contact(db_extract, contact_hash)
    contact_hash[:first_name] = db_extract.first_name
    contact_hash[:last_name] = db_extract.last_name
    contact_hash[:email] = db_extract.email
    contact_hash[:phone_number] = db_extract.phone_number
  end

  def first_contact_call
    db_extract = ContactList.first
    @first_contact = {}
    parse_contact(db_extract, @first_contact)

    return @first_contact
  end

  def display_first_contact
    first_contact_call

    render "first_contact.json.jb"
  end

  def second_contact_call
    db_extract = ContactList.second
    @second_contact = {}
    parse_contact(db_extract, @second_contact)

    return @second_contact
  end

  # def display_second_contact
  #   second_contact_call

  #   render "second_contact.json.jb"
  # end

  def third_contact_call
    db_extract = ContactList.third
    @third_contact = {}
    parse_contact(db_extract, @third_contact)

    return @third_contact
  end

  # def display_third_contact
  #   third_contact_call

  #   render "third_contact.json.jb"
  # end

  def show_all_contact_method
    first_contact_call
    second_contact_call
    third_contact_call

    @all_contacts = []
    @all_contacts << @first_contact
    @all_contacts << @second_contact
    @all_contacts << @third_contact

    render "show_all_contact.json.jb"
  end
end
