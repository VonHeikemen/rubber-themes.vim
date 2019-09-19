# frozen_string_literal: true

module Users
  def current_user
    @current_user ||= User.find(1)
  end
end

class Api::V1::UsersController < ApplicationController
  include Users

  PER_PAGE = 10

  def index
  end
end
