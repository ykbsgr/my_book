require 'test_helper'

class LibrariesControllerTest < ActionController::TestCase
  setup do
    @library = libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library" do
    assert_difference('Library.count') do
      post :create, library: { book_name: @library.book_name, isbn_code: @library.isbn_code, price: @library.price, publisher: @library.publisher, releasedate: @library.releasedate, write_name: @library.write_name }
    end

    assert_redirected_to library_path(assigns(:library))
  end

  test "should show library" do
    get :show, id: @library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library
    assert_response :success
  end

  test "should update library" do
    patch :update, id: @library, library: { book_name: @library.book_name, isbn_code: @library.isbn_code, price: @library.price, publisher: @library.publisher, releasedate: @library.releasedate, write_name: @library.write_name }
    assert_redirected_to library_path(assigns(:library))
  end

  test "should destroy library" do
    assert_difference('Library.count', -1) do
      delete :destroy, id: @library
    end

    assert_redirected_to libraries_path
  end
end
