import requests
import json

# Configuración de la petición
grafana_url = 'https://bcpdesa.grafana.net/api/folders'  # Reemplaza con tu URL de Grafana
api_key = 'glsa_DLF3ehKTFRhYgt3etYZCNyikGoD4ll5e_b5c196c7'  # Reemplaza con tu API key de Grafana

# Headers de la petición
headers = {
    'Authorization': f'Bearer {api_key}',
    'Content-Type': 'application/json'
}

# Realizar la petición GET a la API de Grafana
response = requests.get(grafana_url, headers=headers)

# Verificar si la petición fue exitosa
if response.status_code == 200:
    folders = response.json()
    
    # Extraer títulos y UIDs
    folders_info = [{'title': folder['title'], 'uid': folder['uid']} for folder in folders]

    # Guardar en un archivo JSON
    with open('folders.json', 'w') as json_file:
        json.dump(folders_info, json_file, indent=4)

    print("Datos guardados en 'folders.json'")
else:
    print(f"Error al realizar la petición: {response.status_code}")
    print(response.text)
