module API
  module V1
    class Links < Grape::API
      include API::V1::Defaults
      version 'v1' # path-based versioning by default
      format  :json   # we don't like xml

      resource :links do
        desc "Return list of links"
        get do
          Link.all   # obviously you never call #all here
        end
      end
    end
  end
end
