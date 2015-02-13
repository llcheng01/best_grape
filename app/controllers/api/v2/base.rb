module API
  module V2
    class Base < Grape::API
      mount API::V2::Links
      # mount API::V2::Categories
    end
  end
end
