require 'test_helper'

class UchroniaControllerTest < ActionController::TestCase
  setup do
    @uchronium = uchronia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uchronia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uchronium" do
    assert_difference('Uchronium.count') do
      post :create, uchronium: { description: @uchronium.description, image_id: @uchronium.image_id, media_embed: @uchronium.media_embed, pod: @uchronium.pod, title: @uchronium.title }
    end

    assert_redirected_to uchronium_path(assigns(:uchronium))
  end

  test "should show uchronium" do
    get :show, id: @uchronium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uchronium
    assert_response :success
  end

  test "should update uchronium" do
    put :update, id: @uchronium, uchronium: { description: @uchronium.description, image_id: @uchronium.image_id, media_embed: @uchronium.media_embed, pod: @uchronium.pod, title: @uchronium.title }
    assert_redirected_to uchronium_path(assigns(:uchronium))
  end

  test "should destroy uchronium" do
    assert_difference('Uchronium.count', -1) do
      delete :destroy, id: @uchronium
    end

    assert_redirected_to uchronia_path
  end
end
