# TP Docker & Kubernetes Rémy LEGRAS & Visoth YOUK SIM

Ce projet est une application web simple utilisant une architecture à trois conteneurs : une API Python, une base de données MySQL et un reverse proxy Nginx.

## 🔧 Structure du projet

```
.
├── app/              # Application Python (Flask)
├── mysql/            # Conteneur MySQL avec configuration
├── nginx/            # Conteneur Nginx avec reverse proxy
├── compose.yml       # Configuration Docker Compose
└── setup_manual.sh   # Lancement manuel sans Compose
```

## 🚀 Lancement avec Docker Compose

Assurez-vous d’avoir Docker et Docker Compose installés.

1. git clone https://github.com/RemyLegras/TPDockerKubernetes.git
2. Dans le dossier racine du projet, exécutez :

```bash
docker compose -f compose.yml up --build
```

3. L'application sera disponible sur [http://localhost:5423/health] & [http://localhost:5423/data].

## ⚙️ Lancement manuel (sans Docker Compose)

Vous pouvez également lancer les conteneurs un par un avec le script fourni :

```bash
chmod +x setup_manual.sh
./setup_manual.sh
```

L'application sera disponible sur [http://localhost:4743/health] & [http://localhost:4743/data]

## 🐳 Conteneurs

- **app** : API Python Flask (port 4743).
- **mysql** : Base de données avec script de création (`init.sql`).
- **nginx** : Reverse proxy vers l'API.

