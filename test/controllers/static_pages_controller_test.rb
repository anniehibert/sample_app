require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
  	@base_title = "Ruby on Rails Tutorial Sample App" #como esto se repite en todos, lo convierto en una variable para no andarlo repitiendo
  end

  test "should get root" do
  	get root_path
  	assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}" #prueba que esté el título de la página
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
  	get about_path
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
  	get contact_path
  	assert_response :success
  end

end
