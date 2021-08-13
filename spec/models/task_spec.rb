require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '正常系の機能' do
    context '登録する' do
      it '正しく登録できること' do

                            # [Point.3-3-1]テストデータを作成します。
                              task = FactoryBot.build(:task_tanaka)

                              # [Point.3-3-2]「バリデーションが正常に通ること(バリデーションエラーが無いこと)」を検証します。
                              expect(task).to be_valid

                              # [Point.3-3-3]テストデータを保存します。
                              task.save

                              # [Point.3-3-4][Point.3-3-3]で保存したデータを取得します。
        entry_task = Task.find(1);

        # [Point.3-3-5][Point.3-3-1]で作成したデータを同一か検証します。
        expect(entry_task.appointed.strftime("%Y-%m-%d")).to eq('2021-08-31')
        expect(entry_task.priority).to eq("2")
        expect(entry_task.title).to eq('田中のタスク')
        expect(entry_task.category).to eq("1")
        expect(entry_task.status).to eq("1")
        expect(entry_task.memo).to eq('RSpecの習得')
        expect(entry_task.username).to eq("1")
      end
    end
  end

  describe '入力項目の有無' do

  let(:new_task) { Task.new }

  it '期限日が必須であること' do

    expect(new_task).not_to be_valid
    expect(new_task.errors[:appointed]).to include(I18n.t('errors.messages.blank'))
  end

  it '優先度が必須であること' do

    expect(new_task).not_to be_valid
    expect(new_task.errors[:priority]).to include(I18n.t('errors.messages.blank'))
  end

  it 'タスク名が必須であること' do

    expect(new_task).not_to be_valid
    expect(new_task.errors[:title]).to include(I18n.t('errors.messages.blank'))
  end

  it 'カテゴリーが必須であること' do

    expect(new_task).not_to be_valid
    expect(new_task.errors[:category]).to include(I18n.t('errors.messages.blank'))
  end

  it 'ステイタスが必須であること' do

    expect(new_task).not_to be_valid
    expect(new_task.errors[:status]).to include(I18n.t('errors.messages.blank'))
  end

  it 'ユーザーが必須であること' do

    expect(new_task).not_to be_valid
    expect(new_task.errors[:username]).to include(I18n.t('errors.messages.blank'))
  end
 end

end
