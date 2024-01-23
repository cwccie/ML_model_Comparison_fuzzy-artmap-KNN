# ML_model_Comparison_fuzzy-artmap-KNN
🔍 Explore and Compare Machine Learning Models Fuzzy ARTMAP and KNN

## Overview
This repository contains the Python script ml_model_comparison_knearest_fam.py, which is designed to compare machine learning models, specifically K-Nearest Neighbors (KNN) and Fuzzy ARTMAP (FAM), using the Breast Cancer Wisconsin Diagnostic dataset.

### Quick Setup and Execution
To simplify the setup and execution process, the repository includes a bash script ML_Model_Comparison_KNearest_FAM.sh. This script will automatically install all required dependencies and run the Python script on an Ubuntu server.

**Steps to Run:
Download the ML_Model_Comparison_KNearest_FAM.sh script from the repository.

Make the script executable:
chmod +x ML_Model_Comparison_KNearest_FAM.sh

Execute the script:
./ML_Model_Comparison_KNearest_FAM.sh

This script will handle the installation of necessary packages, Python environment setup, and execution of the main Python script.This script will handle the installation of necessary packages, Python environment setup, and

### Manual Setup
**Required Packages
To execute the provided Python script on a newly installed machine, you will need to install several Python packages including:

numpy: For numerical operations.
pandas: For data manipulation and analysis.
matplotlib: For plotting and visualization.
scikit-learn (sklearn): For machine learning algorithms and data preprocessing.
torch (PyTorch): For tensor operations, essential for the FAM implementation.
ucimlrepo: For fetching datasets from the UCI Machine Learning Repository.
Installation Commands

pip install numpy pandas matplotlib scikit-learn torch ucimlrepo
Additional Considerations
For a server environment, especially if it's headless, configure matplotlib to use a non-interactive backend like Agg.
Check PyTorch's official installation guide for compatibility with your system's hardware, especially for GPU acceleration.

**Running the Script Manually
After installing all required packages, copy the ml_model_comparison_knearest_fam.py script into a Python file or a Jupyter Notebook, and then run it in your preferred environment.

### System Requirements
Ensure that your Ubuntu server has Python 3 installed. If not, install Python 3 and pip using:

sudo apt update
sudo apt install python3
sudo apt install python3-pip
