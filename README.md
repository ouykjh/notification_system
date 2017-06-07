# Social Bike notification system

## :hash: Description

Simple client - server application which simulates sending messages by bike and receiving by server. It uses redis to communication. Server fetches messages in 5 seconds interval.

## :closed_lock_with_key: Technology

| Name |  Version |
| :--: | :---: |
| Ruby | 2.4.1 |
| Ruby on Rails | 5.1.1 |
| PostgreSQL | 9.6.2 |
| Sidekiq | 5.0.0 |

## Project Setup

### Server


Setup Rails:
```bash
bin/setup
```

Run:

You need to run sidekiq and redis than run:

```bash
rails s
```

### Client

Go to client directory

```bash
cd client
```
run:

```bash
ruby bike.rb client_id
```

## Answers

1. packet size = 192 B

2. 2MB / 192B = 5208,(3) to jest 5208 wiadomości 5208 / 30 = 173,6 czyli można wysłać dzienie 173 wiadomości aby nie wyczerpać limitu

3. In my opinion there should be few types of tests in application. First of all unit tests to check the smallest parts of code - methods, I will use Rspec framework and some mocks, for example there is redis-mock to stub redis. Than there should be integration test included end-to-end tests using Capybara. Manual testing by QA will be also a good practise. It will be good to setup at least one testing environment which will be exactly the same like production, only code will be first tested on test env. If product consist many modules it will be good to have one test environment per module and also one for tesing integration. The last thing is running tests during application build and have some kind of static code analyzer, on environments for example CodeBeat and locally use rubocop and some linters for front end. 
