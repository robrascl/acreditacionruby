# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!([
    { email: 'rodrigo@ruby.com', password: 'rodrigo'}
  ])

  User.create!([
    { email: 'admin@ruby.com', password: 'administrador', role: 1}
  ])
################################################

Typeequipment.create!([
    { name:  'Motor a reación'  }
])
Typeequipment.create!([
    { name:  'Motor turbohélice' }
])
################################################
Engine.create!([
    { name: 'REAC-1' , description: 'F16' ,typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-2', description: 'F16' ,typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-3' , description: 'F16', typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-4' , description: 'F16' ,typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-5' , description: 'F16', typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-6' , description: 'Eurofighter T3', typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-7' , description: 'Eurofighter T3', typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-8' , description: 'Eurofighter T3', typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-9' , description: 'Eurofighter T3', typeequipment_id: 1 }
])
Engine.create!([
    { name: 'REAC-10' , description: 'Eurofighter T3', typeequipment_id: 1 }
])
###############
Engine.create!([
    { name: 'TURBO-1' , description: 'KC-130 Hercules', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-2'  , description: 'KC-130 Hercules', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-3'  , description: 'KC-130 Hercules', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-4'  , description: 'KC-130 Hercules', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-5'  , description: 'KC-130 Hercules', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-6'  , description: 'Avión de carga.', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-7'  , description: 'Avión de carga.', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-8'  , description: 'Avión de carga.', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-9'  , description: 'Avión de carga.', typeequipment_id: 2 }
])
Engine.create!([
    { name: 'TURBO-10'  , description: 'Avión de carga.', typeequipment_id: 2 }
])
################################################
City.create!([
    { name:  'Antofagasta' }
])
City.create!([
    { name:  'Santiago de Chile'  }
])
City.create!([
    { name:  'Concepción'  }
])
City.create!([
    { name:  'Temuco'  }
])

################################################

Usedmaterial.create!([
    { name:  'Turbinas'  }
])
Usedmaterial.create!([
    { name:  'Sistemas de Ignicion'  }
])
Usedmaterial.create!([
    { name:  'Sistemas de Combustible'  }
])

################################################
Maintenancetype.create!([
    { name: 'Preventivo',   }
])

Maintenancetype.create!([
    { name: 'Correctivo',   }
])


################################################

100.times do 
    Maintenance.create(
         datedoit: Faker::Date.between(from: '2023-01-01', to: '2023-09-5')  ,   
            emailtech: Faker::Internet.email , 
            dateman: Faker::Date.between(from: '2023-01-01', to: '2023-09-5') , 
            engine_id: Faker::Number.within(range: 1..20) , 
            typeequipment_id: Faker::Number.within(range: 1..2) ,  
            maintenancetype_id: Faker::Number.within(range: 1..2), 
            city_id: Faker::Number.within(range: 1..4), 
            usedmaterial_id: Faker::Number.within(range: 1..3) 
    )
end 