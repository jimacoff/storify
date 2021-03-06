# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = {
    email:                 'admin@storify.com',
    first_name:            'The Admin',
    last_name:             'Last Name',
    country_code:          ENV['COUNTRY_CODE'],
    phone_number:          ENV['PHONE_NUMBER'],
    gender:                'male',
    password:              'password',
    password_confirmation: 'password',

}
begin
  Admin.new(user).save
rescue

end

ebooks = Category.create({ name: 'Ebooks', description: 'All the books readable via Electronic devices.' })
slides = Category.create(name: 'Slides')
doc    = Category.create(name: 'Documents')
temp   = Category.create(name: 'Web Templates and Themes')
lics   = Category.create(name: 'License')

Category.create([
                    { parent_id: ebooks.id, name: 'Computer Science', description: 'Readable via Electronic devices.' },
                    { parent_id: ebooks.id, name: 'Electronics' },
                    { parent_id: ebooks.id, name: 'Mechanical' },
                    { parent_id: ebooks.id, name: 'Law' },
                    { parent_id: ebooks.id, name: 'Social' }
                ])


Category.create([
                    { parent_id: slides.id, name: 'Computer Science', description: 'Readable via Electronic devices.' },
                    { parent_id: slides.id, name: 'Electronics' },
                    { parent_id: slides.id, name: 'Law' },
                    { parent_id: slides.id, name: 'Social' }])

Category.create([
                    { parent_id: doc.id, name: 'Research Papers', description: 'Readable via Electronic devices.' },
                    { parent_id: doc.id, name: 'Electronics' },
                    { parent_id: ebooks.id, name: 'Law' },
                    { parent_id: ebooks.id, name: 'Social' }])


Product.create({
                   name:             'Electronics in a nut shell',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_P2343',
                   meta_title:       'A book on electronics',
                   meta_description: 'This book has a long description',
                   tags:             'Electronics, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   tax_rate:         1.0,
                   cost_price:       100,
                   selling_price:    120.34,
                   owner_id:         1,
                   categories:       [doc, slides, Category.find_by_name('Electronics')]
               })

Product.create({
                   name:             'Amazing Law book',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_P2342',
                   meta_title:       'A book on electronics',
                   meta_description: 'This book has a long description',
                   tags:             'Electronics, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   tax_rate:         1.0,
                   cost_price:       100,
                   selling_price:    120.34,
                   owner_id:         1,
                   categories:       [doc, Category.find_by_name('Law')]

               })

Product.create({
                   name:             'Tinkering an old car',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_P2341',
                   meta_title:       'A book on electronics',
                   meta_description: 'This book has a long description',
                   tags:             'Electronics, The book, 100Pages',
                   available_from:   2.days.from_now,
                   tax_rate:         1.0,
                   available_upto:   45.days.from_now,
                   cost_price:       100,
                   selling_price:    120.34,
                   owner_id:         1,
                   categories:       [doc, slides, Category.find_by_name('Mechanical')]

               })

Product.create({
                   name:             'Book4',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_P2345',
                   meta_title:       'A book on electronics',
                   meta_description: 'This book has a long description',
                   tags:             'Electronics, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   cost_price:       100,
                   tax_rate:         1.0,
                   selling_price:    120.34,
                   owner_id:         1,
                   categories:       [doc, temp, Category.find_by_name('Mechanical')]

               })

Product.create({
                   name:             'Book5',
                   description:      'This book 5 is very good',
                   sku:              'BO_EL_F1_P2346',
                   meta_title:       'A book on electronics',
                   meta_description: 'This book has a long description',
                   tags:             'Electronics, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   cost_price:       100,
                   tax_rate:         1.0,
                   selling_price:    120.34,
                   owner_id:         1,
                   categories:       [doc, temp, Category.find_by_name('Mechanical')]

               })

Product.create({
                   name:             'Book6',
                   description:      'This book 5 is very good',
                   sku:              'BO_EL_6F1_P2346',
                   meta_title:       'A book on electronics',
                   meta_description: 'This book has a long description',
                   tags:             'Electronics, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   cost_price:       100,
                   tax_rate:         1.0,
                   selling_price:    120.34,
                   owner_id:         1,
                   categories:       [doc, temp, Category.find_by_name('Mechanical')]

               })


Product.create({
                   name:             'Law in a nut shell',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_6P2343',
                   meta_title:       'A book on Law',
                   meta_description: 'This book has a long description',
                   tags:             'Law, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   tax_rate:         1.0,
                   cost_price:       100,
                   selling_price:    120.34,
                   owner_id:         1,
                   categories:       [doc, slides, Category.find_by_name('Law')]
               })


Product.create({
                   name:             'Another book for Law in a nut shell',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_7P2343',
                   meta_title:       'A book on Law',
                   meta_description: 'This book has a long description',
                   tags:             'Law, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   tax_rate:         1.0,
                   cost_price:       500,
                   selling_price:    620.34,
                   owner_id:         1,
                   categories:       [doc, slides, Category.find_by_name('Law')]
               })


Product.create({
                   name:             'Another book for History Law',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_8P2343',
                   meta_title:       'A book on Law',
                   meta_description: 'This book has a long description',
                   tags:             'Law, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   tax_rate:         1.0,
                   cost_price:       1000,
                   selling_price:    1120.34,
                   owner_id:         1,
                   categories:       [doc, slides, Category.find_by_name('Law')]
               })


Product.create({
                   name:             'The core book for History of Law',
                   description:      'This book is very good',
                   sku:              'BO_EL_F1_9P2343',
                   meta_title:       'A book on Law',
                   meta_description: 'This book has a long description',
                   tags:             'Law, The book, 100Pages',
                   available_from:   2.days.from_now,
                   available_upto:   45.days.from_now,
                   tax_rate:         1.0,
                   cost_price:       100,
                   selling_price:    220.34,
                   owner_id:         1,
                   categories:       [doc, slides, Category.find_by_name('Law')]
               })

Order.create({
                 line_items: [
                                 LineItem.create({ product: Product.first, quantity: 2 }),
                                 LineItem.create({ product: Product.second, quantity: 4 })
                             ]
             })
