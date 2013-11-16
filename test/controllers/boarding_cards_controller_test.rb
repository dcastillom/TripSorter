require 'test_helper'

class BoardingCardsControllerTest < ActionController::TestCase
  setup do
    @boarding_card = boarding_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boarding_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boarding_card" do
    assert_difference('BoardingCard.count') do
      post :create, boarding_card: { baggage_reclaim: @boarding_card.baggage_reclaim, directions: @boarding_card.directions, from: @boarding_card.from, gate: @boarding_card.gate, journey: @boarding_card.journey, seat: @boarding_card.seat, to: @boarding_card.to, transport_mode: @boarding_card.transport_mode, travel_locator: @boarding_card.travel_locator }
    end

    assert_redirected_to boarding_card_path(assigns(:boarding_card))
  end

  test "should show boarding_card" do
    get :show, id: @boarding_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boarding_card
    assert_response :success
  end

  test "should update boarding_card" do
    patch :update, id: @boarding_card, boarding_card: { baggage_reclaim: @boarding_card.baggage_reclaim, directions: @boarding_card.directions, from: @boarding_card.from, gate: @boarding_card.gate, journey: @boarding_card.journey, seat: @boarding_card.seat, to: @boarding_card.to, transport_mode: @boarding_card.transport_mode, travel_locator: @boarding_card.travel_locator }
    assert_redirected_to boarding_card_path(assigns(:boarding_card))
  end

  test "should destroy boarding_card" do
    assert_difference('BoardingCard.count', -1) do
      delete :destroy, id: @boarding_card
    end

    assert_redirected_to boarding_cards_path
  end
end
