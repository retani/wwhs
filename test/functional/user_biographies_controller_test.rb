require 'test_helper'

class UserBiographiesControllerTest < ActionController::TestCase
  setup do
    @user_biography = user_biographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_biographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_biography" do
    assert_difference('UserBiography.count') do
      post :create, user_biography: { birthday: @user_biography.birthday, birthplace: @user_biography.birthplace, childhood: @user_biography.childhood, crisis: @user_biography.crisis, education: @user_biography.education, hobby: @user_biography.hobby, job_changes: @user_biography.job_changes, parents: @user_biography.parents, religion: @user_biography.religion, romance: @user_biography.romance, travel: @user_biography.travel, youth_1: @user_biography.youth_1, youth_2: @user_biography.youth_2, youth_3: @user_biography.youth_3, youth_4: @user_biography.youth_4 }
    end

    assert_redirected_to user_biography_path(assigns(:user_biography))
  end

  test "should show user_biography" do
    get :show, id: @user_biography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_biography
    assert_response :success
  end

  test "should update user_biography" do
    put :update, id: @user_biography, user_biography: { birthday: @user_biography.birthday, birthplace: @user_biography.birthplace, childhood: @user_biography.childhood, crisis: @user_biography.crisis, education: @user_biography.education, hobby: @user_biography.hobby, job_changes: @user_biography.job_changes, parents: @user_biography.parents, religion: @user_biography.religion, romance: @user_biography.romance, travel: @user_biography.travel, youth_1: @user_biography.youth_1, youth_2: @user_biography.youth_2, youth_3: @user_biography.youth_3, youth_4: @user_biography.youth_4 }
    assert_redirected_to user_biography_path(assigns(:user_biography))
  end

  test "should destroy user_biography" do
    assert_difference('UserBiography.count', -1) do
      delete :destroy, id: @user_biography
    end

    assert_redirected_to user_biographies_path
  end
end
