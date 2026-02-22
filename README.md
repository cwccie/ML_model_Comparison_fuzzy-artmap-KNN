# Fuzzy ARTMAP vs KNN — ML Model Comparison

A comparative study of Fuzzy ARTMAP (FAM) and K-Nearest Neighbors (KNN) classifiers on the UCI Breast Cancer Wisconsin Diagnostic dataset, implemented in Python with PyTorch.

## Problem

Fuzzy ARTMAP is an underexplored neural network architecture with unique properties — incremental learning, category proliferation control, and transparent decision boundaries — that make it compelling for medical classification tasks. This project benchmarks FAM against the widely-used KNN baseline to quantify where adaptive resonance theory provides advantages over instance-based learning.

## Results

The comparison evaluates both models across accuracy, precision, recall, F1-score, and training time on the 569-sample breast cancer dataset with 30 features.

## Architecture

```
UCI Breast Cancer Dataset (569 samples, 30 features)
    ↓
Preprocessing (StandardScaler, train/test split)
    ↓
┌────────────────────┬────────────────────┐
│   Fuzzy ARTMAP     │   K-Nearest        │
│                    │   Neighbors         │
│ - Vigilance tuning │ - k optimization   │
│ - Category growth  │ - Distance metrics │
│ - Match tracking   │ - Voting scheme    │
└────────┬───────────┴──────────┬─────────┘
         ↓                      ↓
    Performance Comparison
    (Accuracy, Precision, Recall, F1, Time)
```

## Quick Start

```bash
git clone https://github.com/cwccie/ML_model_Comparison_fuzzy-artmap-KNN.git
cd ML_model_Comparison_fuzzy-artmap-KNN

# Install dependencies
pip install numpy pandas matplotlib scikit-learn torch ucimlrepo

# Run the comparison
python ml_model_comparison_knearest_fam.py
```

Or open the Jupyter notebook for an interactive walkthrough:

```bash
jupyter notebook ML_Model_Comparison_KNearest_FAM.ipynb
```

## Files

```
ML_model_Comparison_fuzzy-artmap-KNN/
├── ml_model_comparison_knearest_fam.py    # Main comparison script
├── ML_Model_Comparison_KNearest_FAM.ipynb # Interactive Jupyter notebook
├── ML_Model_Comparison_KNearest_FAM.sh    # Ubuntu auto-install script
├── Example_Output-Successful_Run.txt      # Sample output reference
└── README.md
```

## Requirements

- Python 3.8+
- NumPy, Pandas, Matplotlib, scikit-learn, PyTorch, ucimlrepo

## Related Work

This project is related to the [SOFAM](https://github.com/cwccie/SOFAM) (Self-Optimizing Fuzzy-ARTMAP) research, which extends Fuzzy ARTMAP with multi-agent hyperparameter optimization for improved classification performance.

## Acknowledgments

Thanks to [CharlesPDX](https://github.com/CharlesPDX) for contributions to solving implementation challenges in the Fuzzy ARTMAP code.

## License

MIT License — see [LICENSE](LICENSE)
