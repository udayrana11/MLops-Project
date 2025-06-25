# MLops-Project
End to End MLops project

🚗 End-to-End MLOps Pipeline
This repository showcases a production-grade MLOps pipeline built for vehicle insurance prediction using FastAPI, MongoDB, AWS (S3, EC2, ECR), and GitHub Actions CI/CD. It covers the entire lifecycle: from data ingestion, validation, transformation, model training to deployment using Docker and AWS cloud infrastructure.

📁 Project Structure (Workflow)
arduino
Copy
Edit
├── constants/
├── config/
├── entity/
│   ├── config_entity.py
│   ├── artifact_entity.py
│   └── s3_estimator.py
├── components/
├── pipeline/
├── src/
│   ├── data_access/
│   ├── configuration/
│   └── aws_storage/
├── templates/
├── static/
├── app.py / demo.py
├── requirements.txt
├── Dockerfile
├── setup.py
├── pyproject.toml
🚀 Workflow Overview
✅ Project Initialization
Create template: Run template.py to scaffold the project.

Package Management: Set up setup.py and pyproject.toml for local package imports.

Virtual Environment:

bash
Copy
Edit
conda create -n vehicle python=3.10 -y
conda activate vehicle
pip install -r requirements.txt
✅ MongoDB Setup
Use MongoDB Atlas to host datasets.

Fetch data via mongoDB_demo.ipynb.

Store data using PyMongo in key-value format.

✅ Logging, Exceptions, and EDA
Modular logging and exception handling setup.

notebooks/ folder includes EDA and Feature Engineering.

🔄 ML Pipeline Components
📥 1. Data Ingestion
Fetch data from MongoDB Atlas

Store raw data and metadata in local artifact/ folder

🧹 2. Data Validation
Schema-driven validation using schema.yaml

Logs and reports stored for transparency

🔧 3. Data Transformation
Scaling, encoding, and train-test split

Handled via estimator.py and pipelines

🤖 4. Model Trainer
Train multiple ML models

Evaluate using metrics (R², MAE, RMSE)

✅ AWS Setup & Model Registry
📦 S3 Integration
Trained models pushed to AWS S3 bucket

Set AWS credentials in environment or .env:

bash
Copy
Edit
export AWS_ACCESS_KEY_ID="..."
export AWS_SECRET_ACCESS_KEY="..."
🔍 Model Evaluation
Compare new model against baseline using delta threshold

Only push to registry if performance improves

🚛 Model Pusher
Push best model to model registry folder in S3

🌐 App Deployment with CI/CD (FastAPI)
🐳 Docker Setup
Build & tag Docker image

Push to AWS ECR

⚙️ GitHub Actions CI/CD
Auto-deploy on commit via .github/workflows/aws.yaml

Secrets stored securely in GitHub Secrets

☁️ EC2 + Self-Hosted Runner
EC2 instance runs app using port 5080

Runner connected to GitHub for deployment

📌 Accessing the App
Launch EC2 instance (T2 Medium / Ubuntu)

Install Docker & set up GitHub self-hosted runner

Open browser:

url
Copy
Edit
http://<EC2-Public-IP>:5000
Use /train route to trigger model training.

🔒 Security Notes
Do not commit .env or credential files

Add artifact/, __pycache__/, and .env to .gitignore

📊 Tools & Technologies
Area	Stack Used
Web Framework	FastAPI, Jinja2
Database	MongoDB Atlas
ML & Pipeline	scikit-learn, Pandas, PyYAML
Cloud Infrastructure	AWS S3, EC2, ECR, IAM
DevOps	Docker, GitHub Actions, Self-hosted
Logging & Exception	Custom modules



👨‍💻 Author
Udaybhan Singh Rana
Product + ML Engineering | MLOps | AWS | FastAPI | GitHub Actions