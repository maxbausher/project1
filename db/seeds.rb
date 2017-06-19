# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create first_name: 'Jessica', surname: 'Stark', email: 'stark.jessica12@gmail.com', gender: 'female', password: 'chicken',
#birthday: 1990/1/12,
 relationship_status: 'engaged'

u2 = User.create first_name: 'Max', surname: 'Bausher', email: 'maxbausher@gmail.com', gender: 'male', password: 'chicken',
#birthday: 1989/3/21,
relationship_status: 'engaged'

u3 = User.create first_name: 'Sean', surname: "O'brien", email: 'seano@gmail.com', gender: 'male', password: 'chicken',
#birthday: 1996/6/06,
relationship_status: 'single'

Contact.destroy_all
c1 = Contact.create first_name: 'Jessica', surname: 'Stark', email: 'stark.jessica12@gmail.com', gender: 'female', location: 'Sydney', relationship_status: 'engaged' #birthday: 1990/1/12

c2 = Contact.create first_name: 'Max', surname: 'Abitbol', email: 'hmaxabitbol@gmail.com', gender: 'male', location: 'Sydney', relationship_status: 'single' #birthday: 1988/4/28

c3 = Contact.create first_name: 'Bruce', surname: 'Mansfield', email: 'bruce.mansfield@mac.com', gender: 'male', location: 'Sydney', relationship_status: 'married' #birthday: 1957/8/2

Setting.destroy_all
s1 = Setting.create credit_card_full_name: 'Jessica Stark', credit_card_number: 9191, expiration_date: 9191, csv: 111, credit_card_type: 'Visa'

s2 = Setting.create credit_card_full_name: 'Michael A Bausher', credit_card_number: 2020, expiration_date: 2020, csv: 222, credit_card_type: 'Visa'

s3 = Setting.create credit_card_full_name: "Sean O'Brien", credit_card_number: 3030, expiration_date: 3030, csv: 333, credit_card_type: 'Mastercard'

s4 = Setting.create credit_card_full_name: "Sean O'Brien", credit_card_number: 0404, expiration_date: 0404, csv: 444, credit_card_type: 'Visa'



Interest.destroy_all

i1 = Interest.create item: "Surfing"
i2 = Interest.create item: "Scuba Diving"
i3 = Interest.create item: "Snorkeling"
i4 = Interest.create item: "Backcountry Skiing"
i5 = Interest.create item: "Craft Beer"
i6 = Interest.create item: "Fleetwood Mac"
i7 = Interest.create item: "Assembly Label"
i8 = Interest.create item: "Running"
i9 = Interest.create item: "Outdoors"
i10 = Interest.create item: "Cooking"
i11 = Interest.create item: "Craft Cocktails"
i12 = Interest.create item: "Knitting"
i13 = Interest.create item: "Calligraphy "
i14 = Interest.create item: "Small Batch Whiskey"
i15 = Interest.create item: "Skiing"
i16 = Interest.create item: "Golf"

u1.interests << i2 << i7 << i12 << i13 << i15
u2.interests << i1 << i3 << i4 << i5 << i10
u3.interests << i6 << i8 << i11 << i14 << i9

u1.settings << s1
u2.settings << s2
u3.settings << s3 << s4

u1.contacts << c3
u2.contacts << c1
u3.contacts << c2

c1.interests << i2 << i7 << i12 << i13 << i15
c2.interests << i14 << i11 << i9 << i3
c3.interests << i6 << i15 << i16
