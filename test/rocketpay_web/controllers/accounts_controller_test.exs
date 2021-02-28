defmodule RocketpayWeb.AccountsControllerTest do
  use RocketpayWeb.ConnCase

  alias Rocketpay.{Account, User}

  describe "deposit/2" do
    setup %{conn: conn} do
      params = %{
        name: "Any Name",
        password: "any_password",
        nickname: "any_nickname",
        email: "any@email.com",
        age: "21"
      }

      {:ok, %User{account: %Account{id: account_id}}} = Rocketpay.create_user(params)

      {:ok, conn: conn, account_id: account_id}
    end

    test "Should execute the deposit correctly", %{conn: conn, account_id: account_id} do
      params = %{"value" => "10000.00"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))
        |> json_response(:ok)

      assert %{
               "account" => %{"balance" => "10000.00", "id" => _id},
               "message" => "Balance changed successfully"
             } = response
    end
  end
end
