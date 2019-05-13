# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alonge the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([
    { title: 'Инженерный' },
    { title: 'Экономический' },
    { title: 'Гуманитарный' }
])

users = User.create!([
    { name: 'Иван', middle_name: 'Иванович', surname: 'Иванов' },
    { name: 'Алексей', middle_name: 'Алексеввич', surname: 'Алексеев' }
])

tests = Test.create!([
    { name: 'Физика', level: 2, category: categories[0], author: users[0] },
    { name: 'Сопротивление материалов', level: 3, category: categories[0], author: users[0] },
    { name: 'Макроэкономика', level: 2, category: categories[1], author: users[0] },
    { name: 'Финансы', level: 3, category: categories[1], author: users[0] },
    { name: 'Отечестванная литература', level: 2, category: categories[2], author: users[0] },
    { name: 'Иностранная литература', level: 3, category: categories[2], author: users[0] }
])

questions = Question.create!([
    { body: 'Какой тепловой процесс сопровождается понижением температуры?', test: tests[0] },
    { body: 'Нормативное сопротивление для пластичных материалов равно:', test: tests[1] },
    { body: 'Какая страна обладает самой крупной экономикой?', test: tests[2] },
    { body: 'Что такое разность между лучшими ценами на продажу и на покупку?', test: tests[3] },
    { body: 'Кто написал Война и Мир?', test: tests[4] },
    { body: 'Кто написал Хроники Амбера?', test: tests[5] }
])

answers = Answer.create!([
    { body: 'Исправение', question: questions[0], correct: true },
    { body: 'Нагревание', question: questions[0] },
    { body: 'Предел текучести', question: questions[1], correct: true },
    { body: 'Предел прочности', question: questions[1] },
    { body: 'США', question: questions[2], correct: true },
    { body: 'Китай', question: questions[2] },
    { body: 'Спред', question: questions[3], correct: true },
    { body: 'Бид', question: questions[3] },
    { body: 'Л.Н.Толстой', question: questions[4], correct: true },
    { body: 'А.С.Пушкин', question: questions[4] },
    { body: 'Роджер Желязны', question: questions[5], correct: true },
    { body: 'Джордж Мартин', question: questions[5] }
])

tests_users = TestsUser.create!([
    { user: users[0], test: tests[0] },
    { user: users[0], test: tests[1] },
    { user: users[1], test: tests[0] }
])
