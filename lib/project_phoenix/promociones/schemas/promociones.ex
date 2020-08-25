defmodule ProjectPhoenix.Promociones do
  @moduledoc """
    The Promo Ganga context
  """

  import Ecto.Query, warn: false
  alias ProjectPhoenix.Promociones.Schemas.Promocion
  alias ProjectPhoenix.Repo

  def create_promo(params \\ %{}) do
    %Promocion{}
      |> Promocion.changeset(params)
      |> Repo.insert()
  end

  def list_promo do
    Promocion
      |> Repo.all()
  end

  def get_promo(params), do: Repo.get_by(Promocion, params)

  def update_promo(%Promocion{} = promo, params) do
    promo
      |> Promocion.changeset(params)
      |> Repo.update()
  end

  def delete_promo(%Promocion{} = promo) do
    Repo.delete(promo)
  end
end
