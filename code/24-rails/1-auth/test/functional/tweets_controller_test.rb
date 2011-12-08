require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Tweet.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tweet.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tweets_url
  end

  def test_edit
    get :edit, :id => Tweet.first
    assert_template 'edit'
  end

  def test_update_invalid
    Tweet.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tweet.first
    assert_template 'edit'
  end

  def test_update_valid
    Tweet.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tweet.first
    assert_redirected_to tweets_url
  end
end
