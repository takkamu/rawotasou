class Public::HomesController < ApplicationController
  def top
    @ramens = Ramen.limit(3).order("created_at DESC")
  end
end
