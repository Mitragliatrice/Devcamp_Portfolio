
1.times do |topic|
  Topic.create!(
    title: "Rails"
    )
end

puts "3 topics created"


16.times do |blog|
 Blog.create!(
  title:"Test #{blog}",
  body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus enim dolor, sit amet volutpat odio fringilla gravida. Curabitur cursus, velit vel posuere aliquet, leo eros congue enim, nec varius ante quam et mi. Maecenas dignissim, risus vitae semper mattis, turpis risus condimentum ex, eget congue tellus leo sit amet metus. Duis ut magna ut velit commodo maximus. Morbi ac massa augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec mi faucibus, luctus massa eu, malesuada velit. Vestibulum eget tortor mollis, pharetra lectus nec, molestie diam. Maecenas et orci congue, viverra purus eu, gravida purus. Etiam tristique tincidunt accumsan. Maecenas eu felis felis. Morbi cursus neque eget iaculis eleifend.",
  topic_id: "#{Topic.last.id}"

)
end

puts "16 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "New Skill #{skill}",
    percent_utilized: 14
   )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "New Portfolio #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus enim dolor, sit amet volutpat odio fringilla gravida.",
    main_img: "http://placehold.it/600x400",
    thumb_img: "http://placehold.it/350x200",
    position: portfolio_item
   )
end

puts "8 portfolio items created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "New Portfolio #{portfolio_item}",
    subtitle: "Angular",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus enim dolor, sit amet volutpat odio fringilla gravida.",
    main_img: "http://placehold.it/600x400",
    thumb_img: "http://placehold.it/350x200"
   )
end

puts "1 Angular portfolio items created"

3.times do |technology|
  Technology.create!(
    name: "Tech #{technology}",
    portfolio_id: Portfolio.last.id
    )
end

puts "3 technologies created"

1.times do |admin|
 User.create!(
  name: 'Colton Mathews',
  roles: 'site_admin',
  password: 'Colton11!',
  email: 'mathews.colton@gmail.com'
  )
end

puts 'Admin created!'