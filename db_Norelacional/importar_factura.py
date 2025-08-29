import json
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017")
db = client["factura"]
coleccion = db["inventario"]

with open("factura.json", "r", encoding="utf-8") as f:
    data = json.load(f)
if "facturas" in data:
    facturas = data["facturas"]

    coleccion.delete_many({})
    coleccion.insert_many(facturas)

    print(f"V Se importaron {len(facturas)} facturas.")
else:
    print("X No se encontró la clave 'facturas' en el archivo JSON.")



