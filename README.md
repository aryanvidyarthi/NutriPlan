Indian Meal Recommendation – Setup and Run Guide

Overview
- Flask web app that builds daily Indian meal plans optimized to your targets (ICMR guidelines), with an option to fix a specific meal and portion size.
- Data sources: Breakfast_Adjusted_Max.xlsx, Lunch_Adjusted_Max.xlsx, Dinner_Adjusted_Max.xlsx in the project root.

Requirements
- Python 3.11
- pip

Quick start (Windows PowerShell)
1) Open PowerShell in the project root.
2) Create venv and install deps:
   .\.venv\Scripts\python -m pip install --upgrade pip
   .\.venv\Scripts\pip install -r requirements.txt
   (If the venv is not created yet, create it first)
   py -3.11 -m venv .venv
   or
   & "$Env:LOCALAPPDATA\Programs\Python\Python311\python.exe" -m venv .venv
3) Run the app:
   .\.venv\Scripts\python app.py
4) Open http://127.0.0.1:5000

Quick start (macOS/Linux)
1) python3.11 -m venv .venv
2) source .venv/bin/activate
3) python -m pip install --upgrade pip && pip install -r requirements.txt
4) python app.py
5) Open http://127.0.0.1:5000

Environment variables (optional)
- PORT: override server port (default 5000)
- FLASK_DEBUG: set to true for debug reloads

Project structure
- app.py: Flask app, routes, GA/brute-force planners, fixed-meal feature
- templates/mealplan.html: main UI (form, results, fixed meal controls)
- templates/algorithm_comparison.html: algorithm metrics view
- templates/genetic_visualization.html: GA explainer page
- requirements.txt: locked deps
- Procfile: gunicorn entry for deployment
- runtime.txt: Python version for PaaS (3.11)

Common commands
- Reinstall deps: .\.venv\Scripts\pip install -r requirements.txt --upgrade
- Freeze new deps: .\.venv\Scripts\pip freeze > requirements.txt

Scripts (optional helpers)
- Windows: scripts\windows\setup.ps1, scripts\windows\run.ps1
- Unix: scripts/unix/setup.sh, scripts/unix/run.sh

Troubleshooting
- python not found (Windows): install Python 3.11 (winget install -e --id Python.Python.3.11) and then create the venv.
- Excel read errors: ensure all three Excel files exist in the project root and are not open in Excel while running.
- Port in use: set a free port with $Env:PORT=5050 (PowerShell) or export PORT=5050 (bash) and rerun.


