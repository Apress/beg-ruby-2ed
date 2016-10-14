people = {
  'fred' => {
    'name' => 'Fred Elliott',
    'age' => 63,
    'gender' => 'male',
    'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
  },
  'janet' => {
    'name' => 'Janet S Porter',
    'age' => 55,
    'gender' => 'female'
  }
}

puts people['fred']['age']
puts people['janet']['gender']
p people['janet']

puts people['fred']['favorite painters'].length
puts people['fred']['favorite painters'].join(", ")

