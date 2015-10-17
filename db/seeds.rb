Post.destroy_all
Comment.destroy_all

posts = []
(1..20).each do |n|
  posts << Post.create(title: "post nº #{n}", content: "contenido del postnumero #{n}")
end

comments = []
(1..50).each do |n|
  comments << Comment.create(comment: "comentario nº#{n}", post: posts[rand(1..(posts.length))])
end