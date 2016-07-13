require 'test_helper'

class PersonalPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
  @base_title = "Joe Zuiches"
  end

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end





end
