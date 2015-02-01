class FieldsController < ApplicationController

  # before_action :set_field, only: [:battle]

  # 戦闘
  def battle
    @field = Field.find(params[:field_id])
    @monster = @field.monsters.first
  end

  private
  def set_field
    @field = Field.find(params[:id])
  end

end
