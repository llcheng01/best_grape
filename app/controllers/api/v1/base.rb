module API
  module V1
    class Base < Grape::API
      mount API::V1::Links
      mount API::V1::Categories
    end
  end
end
