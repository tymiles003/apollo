module PostsHelper
  def post_to_poi(post)
    # http://layar.com/documentation/browser/api/getpois-response/
    {
      :id => post._id,
      :imageUrl => "%s%s/assets/layar-icons/tal-logo-100.png" % [ request.protocol, request.env['HTTP_HOST'] ],
      :anchor =>  {
        :geolocation => {
          :lat => post.loc['lat'],
          :lon => post.loc['lng'],
          :alt => 0
        }
      },
      :text => {
        :title =>       post.title,
        :description => post.summary,
        :footnote =>    "From #{post.feed.title}"
      },
      :actions => [
        {
          :label =>         "Read more...",
          :uri =>           post.url,
          :contentType =>   "text/html",
          :method =>        "GET",
          :activityType =>  1
        }
      ]
    }
  end
end