
class ContactsController < ApplicationController

before_action :check_if_logged_in, only: [:index]
before_action :get_contact, only: [ :show, :edit, :update]

  def get_contact
      @contact = Contact.find params["id"]
  end

  def new
      @contact = Contact.new
  end

  def create

      @contact = Contact.new(contact_params)
      i1 = Interest.create item: params[:item1]
      i2 = Interest.create item: params[:item2]
      i3 = Interest.create item: params[:item3]

      @contact.user_id = @current_user.id
      @contact.save
      @contact.interests << i1 << i2 << i3


      redirect_to contact_path( @contact )

  end

  def index
  end

  def show
      @interests = @contact.interests.pluck :item
      @urls = []
      @interests.each do |i|
          url = "http://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByKeywords&SERVICE-VERSION=1.0.0&SECURITY-APPNAME=MaxBaush-ButlersP-PRD-0b7eb28a6-348869c5&GLOBAL-ID=EBAY-AU&RESPONSE-DATA-FORMAT=JSON&REST-PAYLOAD&keywords=" + i + "&paginationInput.entriesPerPage=3&LH_ItemCondition=3&LH_BIN=1"

          @urls.push url
      end

      @results = []
      @urls.each do |u|
          gift_data = HTTParty.get u
          results = JSON.parse gift_data.parsed_response
          results = results["findItemsByKeywordsResponse"][0]["searchResult"][0]["item"]
          @results.push results
      end

    #   binding.pry
  end

  def edit
  end

  def update
      @contact.update contact_params
      redirect_to contact_path( params["id"] )
  end

  def destroy
  end

  # def contact_interest_update
  #   interests = params["interests"]
  #
  #   interests.each do |key, name|
  #     interest = Interest.find( key )
  #     if interest.item != name["item"]
  #       interest.item = name["item"]
  #       interest.save
  #     end
  #   end
  #   redirect_to :back
  # end

  private

  def contact_params
      params.require(:contact).permit(:first_name, :surname, :email, :location, :birthday, :gender)
  end
end
