from hyperon import MeTTa, S, V, E
metta = MeTTa()
with open("database.metta") as file:
    metta.run(file.read())

year = input("Enter movie year: ")
atoms = metta.run(f"!(find-movie {year})", flat=True)

if atoms:
    print(f"Movies from {year}:")
    for movie in atoms:
        print("-", movie)
else:
    print(f"No movies found for {year}.")