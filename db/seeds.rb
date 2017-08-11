# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  article = Article.create(title: "This article is really Interesting", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum interdum, eros quis efficitur blandit, augue magna sagittis mi, in iaculis diam orci a velit. Aliquam aliquam ante sed erat faucibus tristique. Cras tristique, lectus ac auctor mattis, lacus magna maximus est, ut condimentum est lectus nec lacus. Donec sed augue leo. Nunc sed placerat orci. Aliquam placerat elit eget commodo bibendum. Mauris urna tortor, posuere at gravida quis, mattis eu eros. Sed suscipit massa vel mi semper, sed vulputate enim aliquam. Vivamus iaculis quam quis massa interdum congue.

Sed ac volutpat metus, vel porttitor tellus. Proin laoreet felis a eros condimentum, vel scelerisque leo condimentum. Maecenas tincidunt ex vitae libero molestie, ac egestas justo mollis. Morbi blandit sagittis efficitur. Pellentesque in aliquam magna, non finibus tellus. Nunc accumsan libero pharetra eros finibus congue. Fusce euismod orci at elementum facilisis. Phasellus molestie, enim nec vulputate facilisis, nisl augue efficitur libero, nec laoreet massa lectus et tortor. Vestibulum semper velit sit amet elit vestibulum mollis. Aenean maximus magna nec sem commodo, at finibus sem tincidunt. Suspendisse venenatis porta diam vel fringilla. Sed in dapibus odio, a consectetur ex. Suspendisse semper metus vitae quam molestie, eget congue odio finibus. Suspendisse dictum massa eget ultricies suscipit. Duis quis pulvinar tellus. Nam rhoncus lacus at porta laoreet.

Maecenas imperdiet eleifend sapien, quis ultricies lorem auctor vulputate. Nunc ut tempus odio, eget efficitur urna. Maecenas et risus pellentesque, auctor urna quis, tincidunt orci. Nulla sodales risus eget ante facilisis congue. Aliquam maximus faucibus nisl, nec sodales metus auctor id. Praesent porta congue nulla. Aliquam vulputate libero quis eleifend fermentum. Donec ut sem vitae ante tincidunt lobortis. Aliquam nec gravida risus.

Etiam eget nibh vel ipsum vulputate vestibulum id sit amet velit. Sed id magna neque. Sed venenatis felis purus, quis dignissim odio ultricies non. Aliquam fringilla nisl vel arcu elementum porta. Cras at tellus lobortis, venenatis nulla vitae, lobortis nisi. Fusce sit amet faucibus ex, ac pharetra risus. Mauris quis enim eget risus dignissim dapibus eget et dolor. Fusce ipsum sapien, bibendum semper placerat eu, aliquet eget ex.

Duis elementum est id fringilla vulputate. Nunc venenatis purus ligula, eget varius sem viverra ut. Suspendisse vel arcu commodo, rutrum arcu non, pellentesque quam. Fusce id mauris vel mi venenatis elementum. Suspendisse in massa id ipsum lobortis dignissim. In erat ipsum, volutpat ut consectetur eu, dapibus eget enim. Donec luctus massa non ipsum lobortis laoreet. Praesent aliquet urna ante, vel feugiat nisl lobortis id. Suspendisse potenti. Curabitur convallis feugiat nulla, ac blandit odio aliquet eu. Sed gravida vel nunc ac maximus. Phasellus mattis facilisis ante, sed condimentum augue tristique vel. Integer posuere, ante non porta ornare, justo ex ultricies leo, in dapibus dui ligula quis lorem. Vestibulum bibendum, quam mattis eleifend mattis, dolor sapien ullamcorper elit, et egestas odio tellus non dolor. Etiam varius, dui sit amet scelerisque lobortis, justo sem euismod sapien, at finibus erat ligula hendrerit ante.")
  article.comments.create(body: "Hey, this article is great!")
end
