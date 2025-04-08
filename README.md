# 🐳 Django with Docker, PostgreSQL, and dotenv

This is a simple setup for a Django project using Docker, PostgreSQL, and environment variables via `.env`.

---

## 🚀 Quick Start

### 1. Clone the repository
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### 2. Create a `.env` file
```env
DEBUG=True
SECRET_KEY='your-secret-key'

# To generate a new secret key, run the following command in Python shell:
# from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())

# PostgreSQL Settings
POSTGRES_DB=django_db
POSTGRES_USER=root
POSTGRES_PASSWORD=secure_password
POSTGRES_HOST=db
POSTGRES_PORT=5432
```

### 3. Build and run the containers
```bash
docker-compose up --build
```

### 4. Run migrations
```bash
docker-compose exec web python django_project/manage.py migrate
```

### 5. Create a superuser (optional)
```bash
docker-compose exec web python django_project/manage.py createsuperuser
```

---

## 🛠 Project Structure

```
main-directory             # Main project directory
├── django_project/        # Django app source code
|   ├── app/               # Django app directory, #you can create multiple apps under django_project folder
|   |   ├── __init__.py    # Python package marker
|   |   ├── admin.py       # Admin interface
|   |   ├── apps.py        # App configuration
|   |   ├── migrations/    # Database migrations
|   |   ├── models.py      # Database models
|   |   ├── tests.py       # Unit tests
|   |   ├── urls.py        # URL routing for the app, #need to create this file
|   |   ├── views.py       # Views for the app
|   |   └── admin.py       # Admin interface
|   ├── django_project/    # Django project directory
|   |   ├── __init__.py    # Python package marker
|   |   ├── asgi.py        # ASGI entry point
|   |   ├── settings.py    # Django settings
|   |   ├── urls.py        # URL routing
|   |   └── wsgi.py        # WSGI entry point
|   └── manage.py          # Django management script
├── .env                   # Environment variables
├── Dockerfile             # Docker image config for Django
├── docker-compose.yml     # Docker services
├── requirements.txt       # Python dependencies
└── README.md              # Project docs
```

---

## 🧪 Useful Commands

| Action | Command |
|--------|---------|
| Run server | `docker-compose up` |
| Stop server | `docker-compose down` |
| Run migrations | `docker-compose exec web python django_project/manage.py migrate` |
| Create superuser | `docker-compose exec web python django_project/manage.py createsuperuser` |
| Bash into container | `docker-compose exec web bash` |

---

## 📦 Dependencies

- Python 3.13
- Django 5.2
- PostgreSQL 15
- Docker & Docker Compose
- python-dotenv

---

## 🧹 TODO

- [ ] Add static/media volume support
- [ ] Add gunicorn for production
- [ ] Add nginx reverse proxy
- [ ] Add pgAdmin for DB management

---

## 📄 License

MIT
