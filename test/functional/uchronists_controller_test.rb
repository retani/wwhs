require 'test_helper'

class UchronistsControllerTest < ActionController::TestCase
  setup do
    @uchronist = uchronists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uchronists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uchronist" do
    assert_difference('Uchronist.count') do
      post :create, uchronist: { description: @uchronist.description, image_id: @uchronist.image_id, media_embed: @uchronist.media_embed, name: @uchronist.name }
    end

    assert_redirected_to uchronist_path(assigns(:uchronist))
  end

  test "should show uchronist" do
    get :show, id: @uchronist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uchronist
    assert_response :success
  end

  test "should update uchronist" do
    put :update, id: @uchronist, uchronist: { description: @uchronist.description, image_id: @uchronist.image_id, media_embed: @uchronist.media_embed, name: @uchronist.name }
    assert_redirected_to uchronist_path(assigns(:uchronist))
  end

  test "should destroy uchronist" do
    assert_difference('Uchronist.count', -1) do
      delete :destroy, id: @uchronist
    end

    assert_redirected_to uchronists_path
  end
end
