import json
from pymongo import MongoClient

# Conexión a MongoDB
client = MongoClient("mongodb://localhost:27017")
db = client["BogotaTuris"]

# Leer archivo JSON
with open("BogotaTuris.json", "r", encoding="utf-8") as f:
    data = json.load(f)

if "proyecto" in data:
    proyecto = data["proyecto"]

    for nombre_tabla, estructura in proyecto.items():
        coleccion = db[nombre_tabla]

        # Limpia la colección antes de insertar
        coleccion.delete_many({})

        # Inserta el esquema como documento
        coleccion.insert_one(estructura)

        print(f"✔ Se importó la colección '{nombre_tabla}' con su estructura.")

else:
    print("X No se encontró la clave 'proyecto' en el archivo JSON.")
