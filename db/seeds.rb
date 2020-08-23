Article.destroy_all
User.destroy_all

journalist = User.create(email: 'journalist@mail.com', role: 'journalist', password: 'password')
editor = User.create(email: 'editor@mail.com', role: 'editor', password: 'password')
registered = User.create(email: 'registered@mail.com', role: 'registered', password: 'password')
subscriber = User.create(email: 'subscriber@mail.com', role: 'subscriber', password: 'password')

culture_premium_article_1 = Article.create(
  title: 'Culture shock',
  lead: 'Culture shock has taken the world',
  content: 'Curabitur aliquet quam id dui posuere blandit.' * 10,
  category: 'culture',
  published: true,
  premium: true,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://culturalawareness.com/wp-content/uploads/2016/04/Culture-Shock-Medium1.jpg')
culture_premium_article_1.image.attach(io: file, filename: 'shock.jpg')

culture_premium_article_2 = Article.create(
  title: 'Traditional asian food',
  lead: 'The impact of asian food on western world',
  content: 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem' * 10,
  category: 'culture',
  published: true,
  premium: true,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://static2.bigstockphoto.com/3/0/2/large1500/203123227.jpg')
culture_premium_article_2.image.attach(io: file, filename: 'food.jpg')

culture_free_article_1 = Article.create(
  title: 'Home styling',
  lead: 'The methods of furnishing modern homes',
  content: 'Nulla quis lorem ut libero malesuada feugiat. Quisque velit nisi, pretium ut lacinia in.' * 10,
  category: 'culture',
  published: true,
  premium: false,
  location: 'Finland',
  journalist_id: journalist.id
)
file = URI.open('https://images.squarespace-cdn.com/content/v1/5710ae1f5559869411a05677/1519875637001-05PLA56JOENXOHL55GOS/ke17ZwdGBToddI8pDm48kFWxnDtCdRm2WA9rXcwtIYR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UcTSrQkGwCGRqSxozz07hWZrYGYYH8sg4qn8Lpf9k1pYMHPsat2_S1jaQY3SwdyaXg/_85A5200.jpg')
culture_free_article_1.image.attach(io: file, filename: 'styling.jpg')

culture_free_article_2 = Article.create(
  title: 'Skiing is great',
  lead: 'The most popular sport in Scandinavia',
  content: 'Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.' * 10,
  category: 'culture',
  published: true,
  premium: false,
  location: 'Norway',
  journalist_id: journalist.id
)
file = URI.open('https://www.chalmers.se/en/centres/sportstechnology/PublishingImages/Cross_Country_Skiing.jpg')
culture_free_article_2.image.attach(io: file, filename: 'skiing.jpg')

culture_free_unpublished_article_1 = Article.create(
  title: 'Culture kings',
  lead: 'We design your property',
  content: 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.' * 10,
  category: 'culture',
  published: false,
  premium: false,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://bokor.com.au/persistent/catalogue_images/products/culture_kings_bokor_5.jpg')
culture_free_unpublished_article_1.image.attach(io: file, filename: 'king.jpg')

lifestyle_premium_article_1 = Article.create(
  title: 'U cant imagine what this monkey did in the grocery store',
  lead: 'Omg u need to read this lol',
  content: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.' * 10,
  category: 'lifestyle',
  published: true,
  premium: true,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://i.ytimg.com/vi/M3zRXaGEQEA/hqdefault.jpg')
lifestyle_premium_article_1.image.attach(io: file, filename: 'monkey.jpg')

free_article = Article.create(
  title: 'World is burning',
  lead: 'as usual',
  content: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.' * 10,
  category: 'international',
  published: true,
  premium: false,
  location: 'USA',
  journalist_id: journalist.id
)
file = URI.open('https://networkingnerd.files.wordpress.com/2016/09/dumpsterfire2.jpg?w=584&h=584')
free_article.image.attach(io: file, filename: 'fire.jpg')

unpublished_article = Article.create(
  title: 'Bad and unpublished',
  lead: 'This article is poorly written',
  content: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.' * 10,
  category: 'sports',
  published: false,
  premium: false,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://reputationresolutions.com/wp-content/uploads/2018/02/Screen-Shot-2019-05-01-at-6.06.55-PM.png')
unpublished_article.image.attach(io: file, filename: 'bad.jpg')