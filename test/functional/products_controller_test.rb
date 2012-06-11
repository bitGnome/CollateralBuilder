require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { bluesign: @product.bluesign, copy: @product.copy, country_of_origin: @product.country_of_origin, e_style: @product.e_style, fit: @product.fit, goretex: @product.goretex, name: @product.name, polartec: @product.polartec, price: @product.price, size_range: @product.size_range, status: @product.status, style_number: @product.style_number, team: @product.team, upf: @product.upf, weight_oz: @product.weight_oz }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { bluesign: @product.bluesign, copy: @product.copy, country_of_origin: @product.country_of_origin, e_style: @product.e_style, fit: @product.fit, goretex: @product.goretex, name: @product.name, polartec: @product.polartec, price: @product.price, size_range: @product.size_range, status: @product.status, style_number: @product.style_number, team: @product.team, upf: @product.upf, weight_oz: @product.weight_oz }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
