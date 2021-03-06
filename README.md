# [EMLS.ru](http://emls.ru) parser собирает статистику для поиска квартиры.

## Обзор
  Данное приложение сохраняет информацию об объявлениях о продажи квартир, по настроенным поисковым запросам в emls.ru.
  Приложение может использоваться только в личных целях для автоматизации выбора лучшего прeдложения квартиры.
  Для коммерческого использования существует http://emls.ru/about/api/

## Возможности
  - полное сохранение данных объявлений
  - слежение за изменением предложений в целом
  - слежение за изменением средней стоимости квартир за 1 кв.м
  - слежение за изменением цены отдельной квартиры
  - слежение за средним временем размещения объявления
  - фильтрация любой сложности (сырые данные сохраняются)
  - распределение количество-квартир - диапазон цен

## Настройка
  1. `CREATE DATABASE mydb DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;`
  2. `rake db:setup RACK_ENV=production`
  3. Создать cron job с вызовом `rake iterations:emls RACK_ENV=production`, по крайней мере, ежедневно.

## Использование
  Перед использованием нужно отредактировать параметры в Rakefile или в emls.rb (примеры также есть в tests/emls_test.rb)
  Основной класс работы models/stats.rb. Запускаем irb консоль и делаем запросы.

          stats = Stats.new("Пионерская", 4000)
          stats.flat_snapshots # Последние объявления
          stats.prices         # распределение цена - кол-во квартир (шаг - 100 т.р)
          stats.prices_per_meter # распределение цена за кв-м - кол-во квартир (шаг - 100 т.р)
          stats.history # история изменения цен (↑, -, ↓) с начала размещения

## Планы
  - доделать ui
  - доделать поддержку нескольких пользователей
  - расширить функции обработки статистики
