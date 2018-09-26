class ContactsController < ApplicationController
  before_action :authenticate_user! ,:set_contact, only: [:show, :edit, :update, :destroy]
  # before_action :set_contact, only: [:show, :edit, :update, :destroy]


  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = current_user.contacts
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
   
   puts ' IM IN THE CREATE METHOD '
    contact = Contact.new(contact_params)
    contact.save

    contact_event = AffairContact.new(contact_id: contact.id, affair_id: params[:affair][:affair_id])
    contact_event.save

    
    respond_to do |format|
      if contact.save
        format.html { redirect_to contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: contact }
      else
        format.html { render :new }
        format.json { render json: contact.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:fname, :lname, :email, :title, :pro_designation, :company, :location ,:phone, :website, :linked_in, :facebook, :twitter, :other_social,  :notes, :avatar, :user_id)
    end

end
