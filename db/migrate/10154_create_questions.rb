class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|      
      t.string :textQuestion #Таблица Questions с текстовым полем "текст вопроса"
    end
    Questions.create(:id => "1", :textQuestion => "Планируете ли Вы поехать на Красное Озеро?")
    Questions.create(:id => "2", :textQuestion => "Как Вы планируете добираться?")
    Questions.create(:id => "3", :textQuestion => "Планируете ли пользоваться услугами проката?")
    Questions.create(:id => "4", :textQuestion => "Пожелания по проживанию в коттедже:")
  end
  def self.down
    drop_table :questions
  end
  	
end
