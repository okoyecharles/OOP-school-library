require_relative 'print_list'

def get_rentals_by_id(library)
  print 'ID of person: '
  id = gets.chomp.to_i

  print_rentals(library[:people], id)
end
