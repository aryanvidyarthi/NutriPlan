set -euo pipefail

if [ "${1:-}" = "--recreate" ] && [ -d .venv ]; then
  rm -rf .venv
fi

python3.11 -m venv .venv || python3 -m venv .venv
. ./.venv/bin/activate

python -m pip install --upgrade pip
pip install -r requirements.txt

echo "Setup complete."


