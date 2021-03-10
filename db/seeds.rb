10.times do |blog|
    Blog.create!(
        title: "My blog post #{blog}",
        body: "Hello world #{blog}"
    )
end

5.times do |skill|
    Skill.create!(
        title: "Rails skill #{skill}",
        percent_utilized: 15 
    )
end

9.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title #{portfolio}",
        subtitle: "Portfolio subtitle #{portfolio}",
        body: "blah blah blah #{portfolio}",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200",
    )
end