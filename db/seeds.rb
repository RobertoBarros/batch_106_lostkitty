p1 = Pet.new(category: 'cachorro', description: 'poodle branco', address: 'Vila Madalena', found_at: Date.today - 2.days)
p1.save

p2 = Pet.new(category: 'gato', description: 'preto', address: 'Pinheiros', found_at: Date.today - 5.days)
p2.save