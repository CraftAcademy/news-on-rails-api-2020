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

international_premium_article_1 = Article.create(
  title: 'Global warming',
  lead: 'Rainforests are shrinking',
  content: 'Cras ultricies ligula sed magna dictum porta.' * 10,
  category: 'international',
  published: true,
  premium: true,
  location: 'Brazil',
  journalist_id: journalist.id
)
file = URI.open('https://www.conserve-energy-future.com/wp-content/uploads/2014/03/Tropical_Rainforest.jpg')
international_premium_article_1.image.attach(io: file, filename: 'rainforests.jpg')

international_premium_article_2 = Article.create(
  title: 'International universities',
  lead: 'Remote studies are on the increase',
  content: 'Nulla porttitor accumsan tincidunt.' * 10,
  category: 'international',
  published: true,
  premium: true,
  location: 'USA',
  journalist_id: journalist.id
)
file = URI.open('https://ww2.kqed.org/app/uploads/sites/43/2020/03/Distance-learning-800x450.jpg')
international_premium_article_2.image.attach(io: file, filename: 'university.jpg')

international_free_article_1 = Article.create(
  title: 'Flag change',
  lead: 'Sri Lanka wants to change its flag',
  content: 'Proin eget tortor risus. Nulla porttitor accumsan tincidunt.' * 10,
  category: 'international',
  published: true,
  premium: false,
  location: 'Sri Lanka',
  journalist_id: journalist.id
)
file = URI.open('https://www.rnz.co.nz/assets/news/46539/eight_col_compo.jpg?1441060535')
international_free_article_1.image.attach(io: file, filename: 'flag.jpg')

international_free_article_2 = Article.create(
  title: 'Drinking water',
  lead: 'Water is drying up',
  content: 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere.' * 10,
  category: 'international',
  published: true,
  premium: false,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://www.eliteworldhotels.com.tr/blog-en/ImageHandler.ashx?path=~/Resources/CKEditor/Blog/FtDescription/2017-05-03@17-26-36-857_vucudunudaki-toksinlerin-kolayca-atilmasini-saglar.jpg')
international_free_article_2.image.attach(io: file, filename: 'water.jpg')

international_free_unpublished_article_1 = Article.create(
  title: 'The pandemic',
  lead: 'The impact of Corona virus on countries',
  content: 'Nulla quis lorem ut libero malesuada feugiat.' * 10,
  category: 'international',
  published: false,
  premium: false,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://www.festo.com/group/en/repo/assets/319718852-corona-1532x900-adobestock.jpg')
international_free_unpublished_article_1.image.attach(io: file, filename: 'covid.jpg')

economy_premium_article_1 = Article.create(
  title: 'Budget result',
  lead: 'Power to the people',
  content: 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.' * 10,
  category: 'economy',
  published: true,
  premium: true,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://rikedomsskolan.se/wp-content/uploads/2020/01/savings-2789112_1920-1200x565.jpg')
economy_premium_article_1.image.attach(io: file, filename: 'budget.jpg')

economy_premium_article_2 = Article.create(
  title: 'Yearly forecast',
  lead: 'Company results are out',
  content: 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.' * 10,
  category: 'economy',
  published: true,
  premium: true,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://lh3.googleusercontent.com/J-BI3NO_jabPCSaEGsSHbuQpK5VF619EWGGO7PhB30OboQ_gd2OW2HK7OUpgK0OI8BxUGpo19ZYhB4dpOh8CbzMonZx95srqeXhdbgl77IfMKqfJ2gndMA-Ec8efpWIaDkteSnwp')
economy_premium_article_2.image.attach(io: file, filename: 'forecast.jpg')

economy_free_article_1 = Article.create(
  title: 'Global economy',
  lead: 'Corona is hammering everyone',
  content: 'Pellentesque in ipsum id orci porta dapibus.' * 10,
  category: 'economy',
  published: true,
  premium: false,
  location: 'Germany',
  journalist_id: journalist.id
)
file = URI.open('https://images.squarespace-cdn.com/content/v1/5bd57feafb18200d7d6e892a/1560498075435-CCXRJKQMG74C4H60HTG9/ke17ZwdGBToddI8pDm48kHEx3ABR0MnOiQYQwsG3BhYUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcrOafbbYbujHitH7wdcSYdTlwM5rkkgG7-jIvlmdv5Ci3__EbFYhqPIutUEUluNvW/destinosophy-magazine-whats-the-destiny-of-our-world-2.jpg')
economy_free_article_1.image.attach(io: file, filename: 'world.jpg')

economy_free_article_2 = Article.create(
  title: 'Table company declining',
  lead: 'Eating of the floor',
  content: 'Cras ultricies ligula sed magna dictum porta.' * 10,
  category: 'economy',
  published: true,
  premium: false,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://st.hzcdn.com/simgs/07a16a790f6f6b48_4-9673/home-design.jpg')
economy_free_article_2.image.attach(io: file, filename: 'table.jpg')

economy_free_unpublished_article_1 = Article.create(
  title: 'Recession stay away',
  lead: 'The numbers are not looking good',
  content: 'Vivamus suscipit tortor eget felis porttitor volutpat.' * 10,
  category: 'economy',
  published: false,
  premium: false,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS_ku-GmmauVqsDX5pks9N81_16pH-qZ3O2Ug&usqp=CAU')
economy_free_unpublished_article_1.image.attach(io: file, filename: 'recessionn.jpg')

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

lifestyle_premium_article_2 = Article.create(
  title: 'Imperfections',
  lead: 'New concept to hit the market',
  content: 'Donec rutrum congue leo eget malesuada. Quisque velit nisi, ' * 10,
  category: 'lifestyle',
  published: true,
  premium: true,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://impakter.com/wp-content/uploads/2018/09/lifestyle.jpg')
lifestyle_premium_article_2.image.attach(io: file, filename: 'imperfections.jpg')

lifestyle_free_article_1 = Article.create(
  title: 'Gyms Gyms Gyms',
  lead: 'Break a sweat',
  content: 'Sed porttitor lectus nibh. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.' * 10,
  category: 'lifestyle',
  published: true,
  premium: false,
  location: 'Norway',
  journalist_id: journalist.id
)
file = URI.open('https://blogs.studyinsweden.se/wp-content/uploads/2014/12/EmptyName-10.jpg')
lifestyle_free_article_1.image.attach(io: file, filename: 'gym.jpg')

lifestyle_free_article_2 = Article.create(
  title: 'Wash new clothes',
  lead: 'Avoid the bed bugs',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' * 10,
  category: 'lifestyle',
  published: true,
  premium: false,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://blog.vancity.com/wp-content/uploads/2019/08/ClothingRack-iStock-Blog-1000x484.jpg')
lifestyle_free_article_2.image.attach(io: file, filename: 'clothes.jpg')

lifestyle_free_unpublished_article_1 = Article.create(
  title: 'Avoid stress',
  lead: 'Live a happy life',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.' * 10,
  category: 'lifestyle',
  published: false,
  premium: false,
  location: 'Norway',
  journalist_id: journalist.id
)
file = URI.open('https://media.dods.co.uk/sites/media.dods.co.uk/files/image/3003%20stress.jpg')
lifestyle_free_unpublished_article_1.image.attach(io: file, filename: 'stress.jpg')

sports_premium_article_1 = Article.create(
  title: 'Arsenal win',
  lead: 'They did it again!',
  content: 'Pellentesque in ipsum id orci porta dapibus.' * 10,
  category: 'sports',
  published: true,
  premium: true,
  location: 'Sweden',
  journalist_id: journalist.id
)
file = URI.open('https://d2x51gyc4ptf2q.cloudfront.net/content/uploads/2020/08/01205322/Pierre-Emerick-Aubameyang-Arsenal-1.jpg')
sports_premium_article_1.image.attach(io: file, filename: 'football.jpg')

sports_premium_article_2 = Article.create(
  title: 'Gambling',
  lead: 'The way to make money recently',
  content: 'Donec rutrum congue leo eget malesuada. ' * 10,
  category: 'sports',
  published: true,
  premium: true,
  location: 'Spain',
  journalist_id: journalist.id
)
file = URI.open('https://impakter.com/wp-content/uploads/2018/09/lifestyle.jpg')
sports_premium_article_2.image.attach(io: file, filename: 'gambling.jpg')

sports_free_article_1 = Article.create(
  title: 'Horse racing',
  lead: 'One of the most expensive sports in the world',
  content: 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.' * 10,
  category: 'sports',
  published: true,
  premium: false,
  location: 'France',
  journalist_id: journalist.id
)
file = URI.open('https://tyda.se/img/58fb8ee631f75e9fd1392d28bd4ca46d.jpg')
sports_free_article_1.image.attach(io: file, filename: 'horse.jpg')

sports_free_article_2 = Article.create(
  title: 'Bowling',
  lead: 'Is that a real sport?',
  content: 'Nulla quis lorem ut libero malesuada feugiat. Quisque velit nisi' * 10,
  category: 'sports',
  published: true,
  premium: false,
  location: 'Germany',
  journalist_id: journalist.id
)
file = URI.open('https://i2.wp.com/www.riksgymnasietgbg.se/wp-content/uploads/2019/10/bowling.jpg?fit=640%2C356&ssl=1')
sports_free_article_2.image.attach(io: file, filename: 'bowling.jpg')


sports_free_unpublished_article_1 = Article.create(
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
sports_free_unpublished_article_1.image.attach(io: file, filename: 'bad.jpg')