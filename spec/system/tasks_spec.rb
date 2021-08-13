require 'rails_helper'

RSpec.describe "Tasks", type: :system do
  describe '正常' do
    context "タスクを登録する" do
      it "登録できること" do

        user = FactoryBot.create(:user_tanaka)

        visit "/users/sign_in"

        fill_in 'Eメール', with: user.email
        fill_in 'パスワード', with: user.password
        click_button 'Log in'

        FactoryBot.create(:priority_tanaka)
        FactoryBot.create(:category_tanaka)
        FactoryBot.create(:status_tanaka)
        task = FactoryBot.create(:task_tanaka)

        visit "/tasks/new"

        fill_in 'タイトル', with: task.title

        fill_in '期日', with: task.appointed

        select task.username, from: 'task[username]'

        select task.priority, from: 'task[priority]'

        select task.category, from: 'task[category]'

        select task.status, from: 'task[status]'

        fill_in '内容', with: task.memo

        click_button '登録する'

        sleep 2

        # [Point.6-2-8]回答が完了したか検証します。
        expect(page).to have_content 'ID: 2'
        expect(page).to have_content 'タイトル: 田中のタスク'
        expect(page).to have_content '期日: 2021-08-31'
        expect(page).to have_content 'ユーザー: 田中太郎'
        expect(page).to have_content '優先度: 優先度・高'
        expect(page).to have_content 'カテゴリー: 社内作業'
        expect(page).to have_content 'ステイタス: 未着手'
        expect(page).to have_content '内容: RSpecの習得'

        sleep 5
      end
    end
  end
end
