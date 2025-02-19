defmodule Pensieve.Repo.Migrations.CreateMemories do
  use Ecto.Migration

  def change do
    create table(:memories) do
      add :title, :string, null: false, size: 100
      add :content, :text

      timestamps()
    end

    def down do
      drop table(:memories)
    end

  end
end
