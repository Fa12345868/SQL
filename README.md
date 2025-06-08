# 💧 MD Water Services Database

## 📁 Tables Included

- **data_dictionary** – Contains metadata about the database structure  
- **employee** – Employee info (names, contact, positions)  
- **location** – Addresses, provinces, towns, location types  
- **global_water_access** – *(Empty)* Global water access statistics  

### 📌 Additional Tables Referenced (Not Populated)

- visits  
- water_quality  
- water_source  
- well_pollution  

---

## 🔑 Key Fields

- **Employee**: name, phone number, email address, position  
- **Location**: address, province name, town name, location type  
- The database also tracks **water sources** and their **quality metrics**

---

## ⚙️ Restoring the Database

1. Make sure **MySQL** is installed.
2. Create the database:
   ```sql
   CREATE DATABASE md_water_services;

## 🏴Run the SQL dump file using:
mysql -u your_username -p md_water_services < Dump20250608.sql

## 🚩Potential Applications:
Water service management system
Infrastructure monitoring
Employee assignment tracking
Water quality analysis

##🌟Notes :
The dump was created using MySQL 8.0.42
Some tables (like global_water_access) are empty in this dump
The data appears to be focused on water services in African regions

##📝 File Structure:
Dump20250608.sql → Contains INSERT statements (data)
schema.sql or tables.sql → Contains CREATE TABLE statements (structure/code)

✍️BY :
FATMA BADAWY 
