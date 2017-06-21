
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
      url = "http://svcs.ebay.com/services/search/FindingService/v1";
      url += "?OPERATION-NAME=findItemsByKeywords";
      url += "&SERVICE-VERSION=1.0.0";
      url += "&SECURITY-APPNAME=MaxBaush-ButlersP-PRD-0b7eb28a6-348869c5";
      url += "&GLOBAL-ID=EBAY-US";
      url += "&RESPONSE-DATA-FORMAT=JSON";
      url += "&callback=_cb_findItemsByKeywords";
      url += "&REST-PAYLOAD";
      url += "&keywords=Fleetwood%20Mac";
      url += "&paginationInput.entriesPerPage=3";
      gift_data = HTTParty.get url
      # binding.pry
      @results = gift_data["results"]

      

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def contact_interest_update
    interests = params["interests"]

    interests.each do |key, name|
      interest = Interest.find( key )
      if interest.item != name["item"]
        interest.item = name["item"]
        interest.save
      end
    end
    redirect_to :back
end

end
