# Create the venv
python3 -m venv venv
# Activate the venv
source venv/bin/activate
# Install necessary packages for the app to run
pip install -r requirements.txt
# Install pytest and pytest-cov (to produce coverage reports)
pip install pytest pytest-cov
