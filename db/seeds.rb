include FactoryBot::Syntax::Methods

user = User.create email: "yana@agilestudio.id", password: "123123"

account = Account.create name: "AssetX"

location = Location.create name: "Area 1", account: account

create_list :locker, 100, account: account, location: location
create_list :card, 10, account: account

create_list :user, 10

