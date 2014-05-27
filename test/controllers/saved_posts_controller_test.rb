require 'test_helper'

class SavedPostsControllerTest < ActionController::TestCase
  setup do
    @saved_post = saved_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_post" do
    assert_difference('SavedPost.count') do
      post :create, saved_post: { title: @saved_post.title }
    end

    assert_redirected_to saved_post_path(assigns(:saved_post))
  end

  test "should show saved_post" do
    get :show, id: @saved_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_post
    assert_response :success
  end

  test "should update saved_post" do
    patch :update, id: @saved_post, saved_post: { title: @saved_post.title }
    assert_redirected_to saved_post_path(assigns(:saved_post))
  end

  test "should destroy saved_post" do
    assert_difference('SavedPost.count', -1) do
      delete :destroy, id: @saved_post
    end

    assert_redirected_to saved_posts_path
  end
end
