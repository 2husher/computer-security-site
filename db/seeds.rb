# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all

category_1 = Category.create!(name: 'Классификация вирусов')

category_1.articles.create!(title: 'ArchSMS', 
	content: 
	  %{<p>
	      <b>ArchSMS (SMSSend, Pameseg) – поддельный SFX архив или установщик программ</b>. Требует отправки одного или нескольких СМС сообщений для продолжения «распаковки».
	    </p>
        <p>
          Обычно их получают при поиске информации в интернете. Это происходит, поскольку сайты, аспространяющие подобные программы, используют поисковую оптимизацию.
        </p>
        <p>
          От платной «установки» можно отказаться.
        </p>})

category_1.articles.create!(title: 'Winlock', 
	content:
	  %{<p>
	  	  <b>Winlock (LockScreen)</b> – мошенническая программа, <b>блокирующая работу</b> Windows и требующая оплатить разблокировку.
	  	</p>
	  	<p>
	  	  Как правило, проникает на компьютеры пользователей с некоторых порносайтов.
	  	</p>
        <p>
          Пользователь часто сам запускает скачанное с них «видео».
        </p>})

category_1.articles.create!(title: 'Kido',
	content:
	  %{<p>
          <b>Worm.Kido (Conficker)</b> – один из известнейших современных компьютерных червей. Эпидемия началась осенью 2008 года, и червь остаётся популярным до сих пор.
        </p>
        <p>
           Для своего распространения использует критическую уязвимость MS08-067;
        </p>
        <p>
          Умеет подбирать простые пароли для проникновения на компьютер по сети;
        </p>
        <p>
          Также распространяется через флэшки;
        </p>
        <p>
          Останавливает системные службы и скачивает произвольные файлы.
        </p>})


category_2 = Category.create!(name: 'Способы распространения вирусов')


category_3 = Category.create!(name: 'Антивирусные средства защиты')
