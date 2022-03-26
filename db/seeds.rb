
owner_1 = User.create!(name: "Elderly Man Name", email: "old_dude@gmail.com", password: "bad_password")
clifford = Pet.create(name: "Clifford", gender: "M", age: 2, description: "Big Red Dog, likes kids", species: "dog", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", user_id: owner_1.id)
nemo = Pet.create(name: "Nemo", gender: "M", age: 1, description: "an orange fish", species: "fish", owner_story: "My owner is going into assisted living next month and he is worried about what will happen to me", user_id: owner_1.id)

owner_2 = User.create!(name: "Terminally Ill Woman Name", email: "lady@gmail.com", password: "bad_password")
nermal = Pet.create(name: "Garfield", gender: "F", age: 1, description: "small gray tabby", species: "cat", owner_story: "My owner is terminally ill from cancer and only has about 6 months to find me a home.  It causes her anxiety not knowing if I will be in good hands", user_id: owner_2.id)

adopter_1 = User.create!(name: "Applicant 1 Name", email: "some_guy@yahoo.com", password: "bad_password")
adopter_2 = User.create!(name: "Applicant 2 Name", email: "some_gal@yahoo.com", password: "bad_password")
adopter_3 = User.create!(name: "Applicant 3 Name", email: "another_person@gmail.com", password: "bad_password")

UserPet.create!(user_id: adopter_1.id, pet_id: clifford.id, application: "I love dogs and will take great care of him forever.  I have a huge yard for him to run around in and chase squirrels.")
UserPet.create!(user_id: adopter_1.id, pet_id: nemo.id, application: "I will keep Nemo out of the toilet bowl for as long as possible.")

UserPet.create!(user_id: adopter_2.id, pet_id: clifford.id, application: "Clifford will love going on hikes with me.")
UserPet.create!(user_id: adopter_2.id, pet_id: nermal.id, application: "I live an apartment by myself and would love to give Nermal a safe and comfortable home.")

UserPet.create!(user_id: adopter_3.id, pet_id: nermal.id, application: "I have always had cats and just lost mine last month.  I'd love to give her a furever home!")
