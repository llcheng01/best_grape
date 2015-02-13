module API
  module V1
    class Categories < Grape::API
      include API::V1::Defaults

      version 'v1' # path-based versioning by default
      format  :json   # we don't like xml

      resource :categories do
        desc "Return list of categories"
        get do
          Category.all   # obviously you never call #all here
        end
      end
    end
  end
end
