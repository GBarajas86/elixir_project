defmodule ProjectPhoenix.Promociones.Schemas.Promocion do
  use Ecto.Schema
  import Ecto.Changeset

  schema  "promociones" do
    field :titulo, :string
    field :descripcion, :string
    field :email, :string
    field :telefono, :string
    field :horario, :string
    field :direccion, :string
    field :facebook, :string
    field :instagram, :string
    field :maps, :string

    timestamps()

  end

  def changeset(promotion, params \\ %{}) do
    promotion
      |> cast(params, [:titulo, :descripcion, :email, :telefono, :horario, :direccion, :facebook, :instagram, :maps])
      |> validate_required([:titulo, :descripcion, :email, :telefono, :horario, :direccion, :facebook, :instagram, :maps])
  end
end
