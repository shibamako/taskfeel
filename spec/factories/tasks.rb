FactoryBot.define do
  factory :task do
  end

    factory :task_tanaka, class: 'Task' do
      appointed { '2021-08-31' }
      priority { "優先度・高" }
      title { '田中のタスク' }
      category { "社内作業" }
      status { "未着手" }
      memo { 'RSpecの習得' }
      username { "田中太郎" }
    end

    factory :user_tanaka, class: 'User' do
      email { 'tanaka@unborder.jp' }
      password { "password" }
      name { "田中太郎" }
      is_deleted { true }
    end

    factory :priority_tanaka, class: 'Priority' do
      priority_item { '優先度・高' }
      serialize { "1" }
      mukou { true }
    end

    factory :category_tanaka, class: 'Category' do
      category_item { '社内作業' }
      serialize { "1" }
      mukou { true }
    end

    factory :status_tanaka, class: 'Status' do
      status_item { '未着手' }
      serialize { "1" }
      mukou { true }
    end

end
