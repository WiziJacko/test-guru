# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
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

tests = Test.create!([
    { name: 'Физика', level: 2, category_id: categories[0].id },
    { name: 'Сопротивление материалов', level: 3, category_id: categories[0].id },
    { name: 'Макроэкономика', level: 2, category_id: categories[1].id },
    { name: 'Финансы', level: 3, category_id: categories[1].id },
    { name: 'Отечестванная итература', level: 2, category_id: categories[2].id },
    { name: 'Иностранная литература', level: 3, category_id: categories[2].id }
])

questions = Question.create!([
    { body: 'Какой тепловой процесс сопровождается понижением температуры?', test_id: tests[0].id },
    { body: 'Нормативное сопротивление для пластичных материалов равно:', test_id: tests[1].id },
    { body: 'Какая страна обладает самой крупной экономикой?', test_id: tests[2].id },
    { body: 'Что такое разность между лучшими ценами на продажу и на покупку?', test_id: tests[3].id },
    { body: 'Кто написал Война и Мир?', test_id: tests[4].id },
    { body: 'Кто написал Хроники Амбера?', test_id: tests[5].id }
])

answers = Answer.create!([
    { body: 'Исправение', question_id: questions[0].id, correct: true },
    { body: 'Нагревание', question_id: questions[0].id },
    { body: 'Предел текучести', question_id: questions[1].id, correct: true },
    { body: 'Предел прочности', question_id: questions[1].id },
    { body: 'США', question_id: questions[2].id, correct: true },
    { body: 'Китай', question_id: questions[2].id },
    { body: 'Спред', question_id: questions[3].id, correct: true },
    { body: 'Бид', question_id: questions[3].id },
    { body: 'Л.Н.Толстой', question_id: questions[4].id, correct: true },
    { body: 'А.С.Пушкин', question_id: questions[4].id },
    { body: 'Роджер Желязны', question_id: questions[5].id, correct: true },
    { body: 'Джордж Мартин', question_id: questions[5].id }
])

users = User.create!([
    { name: 'Иван', middle_name: 'Иванович', surname: 'Иванов' },
    { name: 'Алексей', middle_name: 'Алексеввич', surname: 'Алексеев' }
])

assessments = Assessment.create!([
    { user_id: users[0].id, test_id: tests[0].id }
])
