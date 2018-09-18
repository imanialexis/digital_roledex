json.extract! contact, :id, :fname, :lname, :email, :title, :phone, :website, :linked_in, :facebook, :twitter, :other_social, :highlights, :notes, :avatar, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
