# TransactionTest

Rails ActiveRecord 跨数据库事务测试。
主要是为了测试 ActiveRecord 在跨多个Mysql数据库的时候，是否能正确的回滚数据，而不会产生脏数据.

## 如何实现跨数据库的transaction

```ruby
  User.transaction do
    Profile.transaction do
      user = User.create(:name => "user information save failed ")
      Profile.create(:user_id => user.id, :address => "failed user address")
      raise "saved failed"
    end
  end
```

## 测试环境
ree-1.8.7-2012.02
Rails 3.1.1
