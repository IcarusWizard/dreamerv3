#!/bin/bash
echo "Running setup script."

# install poetry
pip3 install clearml
pip3 install "numpy<=1.20"
pip3 install pyvirtualdisplay

# export custom_python_path=`which python3`

cat > $CLEARML_CUSTOM_BUILD_OUTPUT << EOL
{
  "binary": "$custom_python_path",
  "entry_point": "$CLEARML_GIT_ROOT/$CLEARML_TASK_SCRIPT_ENTRY",
  "working_dir": "$CLEARML_GIT_ROOT/$CLEARML_TASK_WORKING_DIR"
}
EOL