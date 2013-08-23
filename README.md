# Websmsby

Websms.by API

## Установка и конфигурирование

Добавьте эту строку в Gemfile вашего приложения:

    gem 'websmsby'

Затем выполните:

    $ bundle

Сгенерируйте websmsby.rb initializer для вашего приложения.

    rails generate websmsby:install

Укажите ваши user и apikey в созданом файле config/initializers/websmsby.rb

## Использование

Методы API сервиса websms.by описан по ссылке http://websms.by/index.php?r=site/doc.
Для вызова функции API some_method с параметрами some_params выполните Websmsby.call("api/some_method", *some_params) или просто Websmsby.some_method(*some_params).
Оба метода вернут Hash объект с декодированым ответом сервиса либо nil в случае вызова несуществующего метода.

## Пример

    response = Websmsby.api("api/user_balance")
    puts response["balance"] if response["status"] == "success"

    response = Websmsby.msg_send_bulk(:messages => [{:custom_id => "1", :recipient => "123456789", :message => "Привет!"}, {:custom_id => "2", :recipient => "234567890", :message => "Доброго дня!"}])
    if response["status"] == "success"
      response["messages"].each do |message|
        puts "Сообщение #{message['custom_id']} успешно отправлено"
      end
    else
      puts "Ошибка #{response['error']}: #{response['message']}"
    end

    
Copyright (c) 2013 Yury Samarychev, released under the GNU GPL v3