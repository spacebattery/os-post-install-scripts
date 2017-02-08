# Check $GH_DIR
# Run with `. install.sh`
if [ -z $GH_DIR ]; then
  echo "\$GH_DIR environment variable is not set. Terminating script."
  exit 1
fi

for i in `ls +([0-9])*.sh`; do
  . $i install
done
