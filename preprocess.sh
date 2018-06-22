# Comma-separated list of globs matching the input input files. The format of
# the input files is assumed to be a list of newline-separated sentences, where
# each sentence is already tokenized.
INPUT_FILES="all_validation_labels.txt"

# Location to save the preprocessed training and validation data.
DATA_DIR="./data"

# Build the preprocessing script.
cd skip_thoughts
../bazel build -c opt data:preprocess_dataset

./bazel-bin/data/preprocess_dataset --input_files=../all_validation_labels.txt --output_dir=../data/
