require 'test_helper'

class UchroniasControllerTest < ActionController::TestCase
  setup do
    @uchronia = uchronias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uchronias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uchronia" do
    assert_difference('Uchronia.count') do
      post :create, uchronia: { description: @uchronia.description, image_id: @uchronia.image_id, media_embed: @uchronia.media_embed, pod: @uchronia.pod, title: @uchronia.title }
    end

    assert_redirected_to uchronia_path(assigns(:uchronia))
  end

  test "should show uchronia" do
    get :show, id: @uchronia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uchronia
    assert_response :success
  end

  test "should update uchronia" do
    put :update, id: @uchronia, uchronia: { description: @uchronia.description, image_id: @uchronia.image_id, media_embed: @uchronia.media_embed, pod: @uchronia.pod, title: @uchronia.title }
    assert_redirected_to uchronia_path(assigns(:uchronia))
  end

  test "should destroy uchronia" do
    assert_difference('Uchronia.count', -1) do
      delete :destroy, id: @uchronia
    end

    assert_redirected_to uchronias_path
  end
end
