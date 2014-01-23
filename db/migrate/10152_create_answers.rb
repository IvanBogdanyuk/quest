class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :textAnswer #Таблица Answers с полем "текст ответа"
      t.belongs_to :questions #Связь с таблицей Questions
    end
    Answers.create(:id => "1", :textAnswer => "Я поеду", :questions_id => "1")
    Answers.create(:id => "2", :textAnswer => "Поеду с семьей (Члены семьи оплачиваются отдельно)", :questions_id => "1")
    Answers.create(:id => "3", :textAnswer => "Я не поеду", :questions_id => "1")
    Answers.create(:id => "4", :textAnswer => "Со всеми на автобусе от Петергофского офиса", :questions_id => "2")
    Answers.create(:id => "5", :textAnswer => "Со всеми на автобусе от пр.Ветеранов", :questions_id => "2")
    Answers.create(:id => "6", :textAnswer => "На своем а/м", :questions_id => "2")
    Answers.create(:id => "7", :textAnswer => "Не планирую", :questions_id => "2")
    Answers.create(:id => "8", :textAnswer => "Планирую брать в прокат лыжи/cноуборд", :questions_id => "3")
    Answers.create(:id => "9", :textAnswer => "Планирую воспользоваться услугами инструктора", :questions_id => "3")
    Answers.create(:id => "10", :textAnswer => "", :questions_id => "4")
  end
  def self.down
    drop_table :answers
  end
end
