
class ContactsController < ApplicationController

before_action :check_if_logged_in, only: [:index]
before_action :get_contact, only: [ :show, :edit, :update]

  def get_contact
      @contact = Contact.find params["id"]
  end

  def new
  end

  def create
  end

  def index
  end

  def show
    #   url = "https://api.themoviedb.org/3/search/movie?api_key=24d863d54c86392e6e1df55b9a328755&query=" + params["keyword"]
    #   gift_data = HTTParty.get url
    #   # binding.pry
    #   @results = gift_data["results"]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def contact_interest_update
      @interest = Interest.find( params["id"] )
    #   raise
      @interest.item = params["interest"]["item"]
      @interest.save
      redirect_to contacts_path(@interest.contact)
  end

end
