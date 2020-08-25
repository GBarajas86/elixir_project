defmodule ProjectPhoenix.Repo.Migrations.CreatePromo do
  use Ecto.Migration

  def change do
    create table(:promociones) do
      add(:titulo, :string)
      add(:descripcion, :string)
      add(:email, :string)
      add(:telefono, :string)
      add(:horario, :string)
      add(:direccion, :string)
      add(:facebook, :string)
      add(:instagram, :string)
      add(:maps, :string)

      timestamps()
    end
  end
end
