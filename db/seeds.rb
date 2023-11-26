#Users
User.create(name: "Anna", email: "anna@test.com", password: "password")
User.create(name: "Lexi", email: "lexi@test.com", password: "password")
User.create(name: "Valeria", email: "valeria@test.com", password: "password")

#To Dos
ToDo.create(user_id: "1",
            title: "mini-capstone",
            description: "project api and frontend",
            deadline: 20231221,
            completed: false)

ToDo.create(user_id: "2",
            title: "work-journal",
            description: "new things you learned this week and some things you found interesting.",
            deadline: 20231130,
            completed: false)

ToDo.create(user_id: "3",
            title: "capstone",
            description: "final project",
            deadline: 20231221,
            completed: false)
#Categories
Category.create(name:"urgent")
Category.create(name:"important")
Category.create(name:"general")

