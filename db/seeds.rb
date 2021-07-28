# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create(email: 'makox0105@gmail.com', password: 'password', password_confirmation: 'password')
User.create(email: 'makox0105@gmail.com', password: 'XXXXf00l', password_confirmation: 'XXXXf00l', name: '柴田誠', is_deleted: true)
Category.create(category_item: '社内作業', serialize: '1', mukou: true)
Category.create(category_item: 'システム', serialize: '2', mukou: true)
Priority.create(priority_item: '優先度・高', serialize: '1', mukou: true)
Priority.create(priority_item: '優先度・中', serialize: '2', mukou: true)
Priority.create(priority_item: '優先度・低', serialize: '3', mukou: true)
Status.create(status_item: '未着手', serialize: '1', mukou: true)
Status.create(status_item: '作業中', serialize: '2', mukou: true)
Status.create(status_item: '完了', serialize: '3', mukou: true)
Status.create(status_item: '保留', serialize: '4', mukou: true)
Status.create(status_item: '指示待ち', serialize: '5', mukou: true)
