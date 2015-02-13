module API
  module V2
    class Links < Grape::API
      version 'v2' # path-based versioning by default
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
