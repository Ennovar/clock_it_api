module Api
  module V1
    class EmployeeController < ApplicationController
      before_action :authenticate_user!
      def clock_in
      end

      def clock_out
      end

      def hours
      end
    end
  end
end
