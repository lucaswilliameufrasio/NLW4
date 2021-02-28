defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase

  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "Should return an user if all params are valid" do
      params = %{
        name: "Any Name",
        password: "any_password",
        nickname: "any_nickname",
        email: "any@email.com",
        age: "21"
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)


      assert %User{name: "Any Name", age: 21, id: ^user_id} = user
    end
  end
end