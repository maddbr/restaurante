class CorrigindoONomeEspecialidades < ActiveRecord::Migration
  def self.up
    rename_column :restaurantes, :especialidades, :especialidade 
  end

  def self.down
    rename_column :restaurantes, :especialidade, :especialidades
  end
end