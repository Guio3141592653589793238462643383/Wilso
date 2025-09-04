
# 🏙️ BogotaTuris

Este proyecto contiene la estructura de base de datos **BogotaTuris** exportada desde un script SQL hacia formato **JSON**.  
El objetivo es facilitar la importación y gestión de los esquemas en **MongoDB**.

---

## 📂 Estructura del proyecto

- `BogotaTuris.sql` → Script SQL con la definición de tablas y relaciones.
- `BogotaTuris.json` → Versión JSON del esquema, lista para usarse en MongoDB.
- `importar_mongo.py` → Script en Python para importar el JSON a MongoDB.

---

## ⚙️ Requisitos

- [Python 3.10+](https://www.python.org/downloads/)
- [MongoDB Community Server](https://www.mongodb.com/try/download/community)
- Librerías de Python:
  ```bash
  pip install pymongo
  ```

---

## ▶️ Crear un entorno virtual (opcional pero recomendado)

```bash
python -m venv venv
```

Activación:

- **Windows (cmd):**
  ```bash
  venv\Scripts\activate
  ```
- **PowerShell:**
  ```bash
  .\venv\Scripts\activate
  ```
- **Linux/Mac:**
  ```bash
  source venv/bin/activate
  ```

---

## 📥 Importar el esquema a MongoDB

1. Asegúrate de que MongoDB esté ejecutándose en `localhost:27017`.
2. Ejecuta el script:

```bash
python importar_mongo.py
```

Esto creará una base de datos llamada **BogotaTuris**, con colecciones para cada tabla del SQL original:

- `rol`
- `correo`
- `nacionalidad`
- `intereses`
- `inte_categoria`
- `usuario`
- `reporte_incidente`
- `comentarios`
- `lugar`
- `alerta`
- `rutas`

---

## 📌 Notas

- Actualmente, el JSON contiene **solo la estructura** (campos y restricciones), no datos reales.
- Puedes modificar el archivo `BogotaTuris.json` para agregar registros de ejemplo y probar consultas en MongoDB.
- Si necesitas poblar con datos de ejemplo, adapta el script para usar `insert_many`.

---

## 👨‍💻 Andrés Felipe Guio Aponte

- Proyecto migrado de SQL a JSON y adaptado para MongoDB.
