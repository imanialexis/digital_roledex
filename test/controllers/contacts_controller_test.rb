require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { avatar: @contact.avatar, email: @contact.email, facebook: @contact.facebook, fname: @contact.fname, highlights: @contact.highlights, linked_in: @contact.linked_in, lname: @contact.lname, notes: @contact.notes, other_social: @contact.other_social, phone: @contact.phone, title: @contact.title, twitter: @contact.twitter, user_id: @contact.user_id, website: @contact.website } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { avatar: @contact.avatar, email: @contact.email, facebook: @contact.facebook, fname: @contact.fname, highlights: @contact.highlights, linked_in: @contact.linked_in, lname: @contact.lname, notes: @contact.notes, other_social: @contact.other_social, phone: @contact.phone, title: @contact.title, twitter: @contact.twitter, user_id: @contact.user_id, website: @contact.website } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
