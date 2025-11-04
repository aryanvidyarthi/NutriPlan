set -euo pipefail

if [ ! -d .venv ]; then
  echo "Run setup first: scripts/unix/setup.sh" >&2
  exit 1
fi

. ./.venv/bin/activate
python app.py


