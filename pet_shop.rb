
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash (pet_shop)
  return sum = pet_shop[:admin][:total_cash] + pet_shop[:admin][:pets_sold]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return sold = pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pets_shop, increase_amount)
pets_shop[:admin][:pets_sold] += increase_amount
end

def stock_count(pets_shop)
  count = pets_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  found = []
  for breed_name in pet_shop[:pets]  #----- breed_name = item in array (pet_shop)
    if breed_name[:breed] == breed
      found.push(breed_name)
    end
  end
  return found
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet_shop[:pets].delete(pet)
    end
  end
end

------------------------------------------------
# def remove_pet_by_name(pet_shop, name)
#   pet_to_be_remove = find_pet_by_name(pet_shop,name)
#   pet_shop[:pets].delete(pet_to_be_remove)
# end
------------------------------------------------
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  pet_to_be_add = stock_count(pet_shop)
end
