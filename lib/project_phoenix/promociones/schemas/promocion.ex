defmodule ProjectPhoenix.Promociones.Schemas.Promocion do
  use Ecto.Schema

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
    field :promociones, {:array, :string}

    timestamps()

  end
end
