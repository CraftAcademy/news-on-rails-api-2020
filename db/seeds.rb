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
file = URI.open('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEhUQEBAQEBUVEBUVDxUPFRUPFQ8PFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4vFx8zODMtNygtLi0BCgoKDg0OGhAQGi0lHR81Li0tLS0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBAYFBwj/xABDEAABAwEFBAcFBQYEBwAAAAABAAIDEQQFEiExBkFRkRMUImFxgaEVMlKx0QcjQlPBFkNykvDxM2KCwkRUZKKy4eL/xAAaAQEBAQEBAQEAAAAAAAAAAAAAAQIDBAUG/8QALREBAAIBAwIEBAYDAAAAAAAAAAECEQMSITFBBBNRgSIyM2EVUnGRsfAFFEL/2gAMAwEAAhEDEQA/APFk4FNShBMFNGoAp49FBPBJQ0XYs9iL9Cs/IrdmvV8YoM1Vdr2c/wDoJ3sx65TdoX8E/wDaN/D1ThHQN3uSdReqA2ifw9U4bRu4eqvAviwPSGwPVM7Rnh6oG0Z4eqcC0bveqN44oQK0qfd/UqT9ozwXJvO2OmfU6BvpqpOAMtbiaZ6aVpU8SdaKWF9RWrGjeT2R9Vz4256071dMbSBQvJ7qj5FMrjK0JcqCZo4uYMefCtRyUTp7TGcTJzIAcw4kjzadPQpOrSOFHDFwJ94DhXf51V2xXFK/M1aKU45LM3iG40rT2WrHeeJtW5Odqxxqx/Frgcq8Hc1y7cGh2Qq1w0O6u7u1Wosexr3gEHlkrl4bHuwYnOAw0qQK9knPLfSuXJZ8yJanRtDziWMt8/dPEKQ6Lv3vYWMAxHNpcK8Rks+91TkujijjKu2eSuSqNCMVMwg63Qu4KLqzq6JsF6EChUntgcFrMIDA7gmOs7uCf7YHBAvccE4EJszk3qzuCnN6jggXq3gnAg6s7gl6B3BT+1W8EntRvBOFRiI8Ej201UntIcFVntBcVJCF6VRoUyK5SBOcmhBKFYi0VcKxFooElUMimkUEiKYhCCqgqhIlQCEIQCv2WBrxm7DXMmhIFMs1QXTiiHRNeaUz0OrgdD8+SkrBsdkxHsmoHAUzXYuy6S9wACv3DYI+i6WVwY3Uk6KSTaSzwH7qKR9N+leS89ptaeHrpFaRy0lg2QcaEnxWlsFwNb7w5rGXZt+HOALXM8c6ro3ltyIx2cTu4bwueJziYd4tExmJbltgY0UbTwC4+0smCGQjcwnzAqsBH9pVrD+xHEBuDsyB4krSQXy62xOjnh6NzmOwuZ7rsu4latSernGpE8PL75tGPKmoA5ZfRckLSXZcElsa8MdGwszc6Z3RsawDUuoc603LP2iB0bnRvFHNcWuGuY4HeF6omM4eKYnGUdUhTSUoVZNckTnpqBEJUiAQhCASIQgVqnbqoGqdmqB6EFCgrlNalSBUTBWI9FXViLRQJKq8qsSqvKgYhCFQISJUAhCED4YnPc1jfec4Nb/E4gD1K3N5WR0tmDMDBHG5wsxaAwta1wbR3HFzrmsNDMWOa9urHBzf4mkEfJerXnZGzRRYT2C5riW6hjyHhw/0n0XDWmYmJh6/DVratolzbJZXmxRNEeJ1C4Bw1ArTLkspbLI7PHIA6uYHugcAvSi8ZNaaUyb4ClP67lJeccDmjHFHI/iRU+ZXKNTEu3lZjDzO6rrkkkY1gNC5oJ3a5ler7ebJB9niEDQ1zRQ0AGIEb1DsxYAXdIW4Wg0roK8At7OWvjpUVAopN5nlYpFeHgVk2dkbKBLBNluDatdTiQDVbe4dn32ej/vGNJrgkNSK60HCi0MtobBJTFQnVpOR7wrF5WprmhwO7kk3zBGnEdGO2SskEcstmlDi/E5jS6mEtFcPmsLtvZxHaGt/F1aIyd7u0Af5QzkvXTZ8T2z4fdYGtyzfIXEtA5rx7ba0iS3TlpqGubGDx6JjYz6tK3pTM2mXPxGK6UVZ0pzE0pzF6nhK9NTnpqAQhCBEIQgRCVCAap2aqBqmagkqhNQoK6AkQFRMrMWirhWI9FAkqryKSZ6hVCURRKhAlEUS1RVAlEJaoqgRen7B3pHLZeikliZJD2KTEgPg1Y6gIqW5jyXmNULF67ow6aepNJy9RmtLHAvjdia17gHaYqbwOC5rbxke8NG85k/hG8rmbLWoGB8Z/DIDnwcMv/ErogfdktPaGWW/+qLzWricPZXUzGXW2hfNGyN1nneAB2mZUPeqFz3naJz0bppW1yOA0NN9CqL7daHZOgcwAe84FwpxqKgK3ccrsVeljbwwguLifwgNFSVrbELEzPdsr4ggfZ2sNWloAY+tXNdxLjquXc1okpgkNdRXdVppl80y33Tb5cQ6RrWAZBzaPc6tePZFOKcyTCGg6jXvK53hazPdUvP7QzZHy2fq4fIzKCQuoG4mBwLhvpiXmDnE1JNSTUk7ydSr+004ktczhp0mH+QBn+1c9eqlIrHDw6l5tPKEpzEiULo5lckSoQJRFE5CBlEUTkIG0RROQgaFI1NStKB5QlSKCugISsGaonY0nIZqd0MlKYHciujdVma0hziPNauK846Dst5q4Hn/AFST4Hcik6s/4HcivRxfMY/A3mE116w/A3mEwPOuqyfA7kUGyv8AgdyK9LivqEfgbzCgfecRPut5hMDzrqz/AIHcijqz/gdyK9JhvKIfhbzClF5Q/A3mEwPMurv+F3Ippgd8J5L1MXtCP3Y5hVpbwhP4B6K4HmnQu+E8kGJ3Ar0kWyGlMA9FEbVCKksHom0ZPZkOBmGY+6Dv5Xf/AErtntTsQFd+SndeQ6YFrA1vu0GpDsqnvrRUbfGY3kjSvJcdSvLvpz8LR2y9HgAirXDe3LPuVWx7Q2jFRoYDXUNAPOijsF+sa2jmhx796vWa/oK16JrT3AZrjETD0xf0lrbufK6LtZV13ZLmRWfpJg3cDU+CjG0bpW4GjuFFfuqItNXanM93BZmPUzl5NtCzDa7QP+pl04F7j+qp0Wp+0PZ59mtQlBL47UDLG6mj60kjPe1wPkQufdl3EEOdTwXriOHgt1cIsPApcB4Fb2sVP8McgmudF+WOQW9qMLRJRb5roPyxyCV5s/5Q5BNqZYGiSi3YEFf8McgmysgOkY5BNplhqJFsjBF8A5BSiCD8sck2mWIRRa+SzQ19z0TOrQ/AOSbTLJoWs6tB8A5JOqwfCOSbTLK1QtT1aD4RyQm0yyKAhCyqUWhw3lOFsf8AEVXQgsdbf8RS9bf8RVZLVBZ62/iUdcfxKrIQXYbRI9waDmTy713IQG658Sd/0XKueMAOkPgPmf0T32h8pwxNLs6ZcdwW44Gquu4bRa2l0FnfI0GhcKNFeGIkVPgtVd/2WRvirJbJo5SAS1gY5kfcairvGq72xv3VnhgcHRlsTRICC0h5FXVHGpJWlskLmE4yHUORH4mHQkcfovPfVmej110axHLj3bsvd7IurdXjk7NHSPaDI4/Fj1B8NE6y7C3Y0FhgMldS97sQ8KEU5Lsw2cRvca1Bo5o4DQjn8014LbQxw917C1w3B7cwfME8lzi0x3dNlfR4Tt9s+bBanRUJieC6AnPFGci0niDly4ruXddDb3sxljcG2yIBtpYT2bSKdiX/ACvcBmdC4O0rVar7abr6SzRzjWKWh/gkGE+oavL9lr9fYLUycE4QcM7R+OF2Tst5GTh3t716aTujl5LfBbhzrdY5IHlj2uY4HtNeKEf1xCbHL3L3raHZqz3lG1xpm2sUrKVAcKgg7x3Lym/NjbRYXUlAcwn7uRvuv+h7j66rN6zVusxY65KZOrU+gWvsTS9wDQXE6ACpceACyNzw4dch3r1/YHZssw2uYFri09Cw6tByxu7yNBuB4nLhEbpd5mKVyzH2kXBJFdll6ahey0PEpaa9GLQXvoDvo4MavNoLqe7ITeRoF719rFnx3XaKat6KQd2CVjj6ArwgGoBXr2bq8Th4c85kPuKX81V5rqlaCekrRXRMRqaqOQOIOE1y03rjautX7txNZZh9ukaSK6FJ7Rk4qvamkPIcCDXQih9VFVdMywu+0ZOKcLzk4qgnxMLiGjUmgTIt+05OKBeknFbzZf7OOsMxOJcSMtwHkuPtbsLLYiTnTd4LnGtWZxlrbLNm9JOKT2k/iqRQuuWV32i/ij2i/iqSEyLntB/FCpIUyBCEBAiEIQCEIQKnRsLjRoJJ0ATV1rF90NO0dTwHBWB1rmul0hjszI+mle6jI9znmpOI7mjedwC3tgtNmsErrLZyx0sIItdqDQD0oydDZgRSNgORdqaa8M79lt6xwW/HIe0bNII6/GSz1oHeqpX9Y3WW2TO1imfJJC7c4Odic3xaXUp4HerfO3hvTxu5apu0Aje6V8pIkk7LKFzjQZvLjoNB3rqO+0WJ0jGYCxoDg93EbvWq8wfaQW1rkMuNKqqZcRAaHvJPZDASSd1F44pbPD3eZTHxdXs9t2/sgwBhJOLC7uaRWvMBU7/+0CHoh1fORsjaV3tocR5LyZjs6OqCCQQdWkZEHvUvRncSteVdK6uk9MuXaQ3sX2O1NAiMdXEHCQd2fGtD5LibR/Zw2KIyWS0Omcxpc+ObC0vYNejIyJyOR1WZuud8Mgcwmp17wM6LswbSzTiRrGPfSMtzzwtp71BwqVaxes4S86N4zlo/sh2tYIX2O0SNaImGSBzzQdAM3tqfh1Hce5WL12+Frc6GNjBAHUIlaHmah1LSMgdRSh+Q8nFmkicHszoa8VrLuukWqMzQ0DgM2/C8atPjWoXs7YeBt9n7JZTIJWxMxNdUNJc5gO44SSvR7qvqGd74muAljAMjDqGnRw4t3LxfZjp2Oo1rWkGh6ZxFeNGtBqO/Jau77lllmNpLxZbQ1/YfG7pGPbQUINAcJGRaRqDrkTmKx0hMzPWW82rsvTWK0x64rNKB44DRfMtkl7IOuS+ooJHujwzBgeWEHAasflmW1zHgfXVfNV72QQWiaHcyU4f4TmPQrVOhJheKVTA5RaZ96kDwVtEj8LxR7WvHBwr/AGVCe4YXZsLo+4HEPXMc1aqndJRJiJGVt1jdC6jswdCNDTXzUl0uAlaTxXTvftMd3OqO7IV9KrgsdQ1XC9ezUS+gdkdporMwVFQRu3Krt7tBDamGmlN68lsO0LmDCdFFeN+ueKBfPjQvnHZ3316uVaqYjTSqiQShe9wKhIlQIhKkQCEIQIrFjsMsxIijfIQKuwCuEd/BQLQbNXxJZmSdG1hxuGIuFcgMvmVm04h10NOL3xaeFVuzFuP/AA0n/aP1Txspb/8Aln82fVaVu09pIyw+TQl/aS1cW/yt+i5eZL6sf4/RmOs/32cKz7GXhiBNmdStc3M+qvfsjbjmYgPF7fqr52itfxgeTfok9v2v8ynk36J5sn4dpesqMGyVtErXkNjDXDtNONwA4NGq3c1xuILevxFhHu9HI6pI19w0IPBZP27a/wA53omm+rV+e/mpOpM9VjwGnHTK/eFyteRC6Ehjaux2RrYzK9x/eYxU/oue+67TDiFis5iLgWmZ7sU2A/hYdI/FoqeKQ3paT++f/MU03hPvmk/mKkXmvR2jwOlMcxM+6jDsxbB+6J81ei2ftf5Xr/6TTapfzXn/AFH6pnWHn8buZWvOt6n4dofln910bOWoUcAAQajtEUPGtF3rkuGFrjLaRKXkEfdmMNoa1Oe9ZPpHfEUw14lYtebcy1HgdKOlZ/dtbds9ZCR0JdEKZl72vcTvy0orNx2OCyOc5toacTaOa4soeByOuZ5rAYe8owd5VjVtHdf9HR/K9Lkns2IPEzARvBaP9yuR7RxsFGywnvcQfkV5ThCC0J5tvVY8FpRPyQ9cG2+EYTNARwILqeGax18ix2l8kvSt6VzSRQloL2jLIiiyMjg39FFBXGCVY1LerN/D6XSKQsDRRhSNOSY9fQfmhiTZZKBKFDatEFWQ4ge8n5ALhkLrA9kc+ZXNtAo4+Neea42WESEIWVKhCEAhCEAhCECJwSJQgfRXbF7p/i/RU1esoo0+IWL9Hp8J9WPf+F2NxGisNmB3qo1Jh7XkvP1fc3TXGO6/jHFHSDiFUwhLgCmIdd9vRa6UcQl6RvEKoGDglwjgmIXdb7LYlbxCDK3iFVp3IopwbrLJmbxSdOzioKIThd1vsm6dvFL1hvfyUKAnBut6p+st7+Sb1kcCokoKvCZt6pDah8JTXWn/AClNKa/TyThJm+OpYyT2jqfQKSH3x/W9RR6BPiPbanciPhhYaUyRKFFaTQea+m/JnVVe2OySseqlulUmVI0dkeAVK2MzrxCtsOShtLagHgfn/ZYnoqlhSYVLgKOjKwI6IwqToykwFAyiSikwFGAoGUSKTAhBElCRAQSq9ZtD5fqueuhZdD5fqsX6PR4X6se/8LLUrR2vJI1A18lwfbmeISpnTdyemxNopGFtuzEQdVLVLRKo6ckCWqEqLiSISpUTEmoTkIuDUOB3ZJ1EJkmuYQsrXMqQpKfNKUmWaVxGCx6JWe+3xTYTkng9pvindv8A5j2S8fFRWl3Z8wn018SorUaN5L6XZ+VtHMqnSjdX5KtO89wUjnjwVWZ9ViZEzHZeSdTJRRnJWIt3igr0RRX3SR9yeyWPiFnaZc3Cii6nTRdyb00fcrtRzMKCF0XSR9y5tpmBNBopMKYXBImFKoIErUiVqB66Fl0Pkuer9m3+Czfo7+G+rC01AOYTWlFcwvO+32j2TpB+iQJGn5LLr3SBOAUZORQ1yNZPKKpuJKixK1Y7P0lcyKbgKneo548DsNa6V3eSsXcKBzqnwBpUD+/oq9q94mta51rWqz3cotO+Y7GVRiTQmONCtOkymqElVFjT0WJFfn+iUptfmlQrIhOScTmPFMgOSc45jxTukfLHsndk5w4Pd8yq1tPZVi1H7x3+k82NVO3Hs+a+jHyvzGpxef1c5wUEhzVhyqy6rEsrMeisN0VePQKdhVhHPnycfH5qPEVNax2vIfRQLClxFLUpqVAoJTwownhA9CRKoK6cEiFRIFes2/wQhZv0d/D/AFIWGIOoQhed9uflj2Sob+iEKOknhMMfelQi4yVoSoQo1g5j6GuqSqEIgQRVCEUBoGiVCEWDfqnIQiQbDp5pzt3ihCd0j5IS28/eeMbOdKfoqVt080qF9CvyvzWt9S36y5z3Ks/VCFmWFuPQKWMoQrAq20ZjwVdIhZkCVIhQKE8IQgclQhQf/9k=')
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