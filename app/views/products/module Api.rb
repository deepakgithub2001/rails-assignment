module Api
  module V1
    class ProductsController < ApplicationController
      def index
        render json: {data: "suucess"}
      end

      def create
        render json: {data: "create suucess"}
      end
    end
  end
end 