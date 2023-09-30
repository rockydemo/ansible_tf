# Create the kv-main.tf file
touch tf_ansible/kv-main.tf

# Save the no of variables (columns) from sql output in NO_OF_COLUMNS
NO_OF_COLUMNS=`head -1 sql_output.txt | wc -w`

# Save the names of all variables in COLUMN
COLUMN=`head -1 sql_output.txt`

# Remove the first line, i.e., column (varibale) names from sql output
sed -i -e '1d' sql_output.txt

# Save the no of rows from sql output to NO_OF_ROWS
NO_OF_ROWS=`cat sql_output.txt | wc -l`

# For every row, we've to create the tf resource block
for i in `seq ${NO_OF_ROWS}`; do
  # Save the values of variables in ROW
  ROW=`sed -n "${i}p" sql_output.txt`

  # Get the value for every variable (column) and save it in an env var
  for i in `seq ${NO_OF_COLUMNS}`; do

    # Save the variable name in VAR
    VAR=`echo "${COLUMN}\n${ROW}" | awk -v num=$i '{print $num}' | head -1`

    # Save the variable's value in VAL
    VAL=`echo "${COLUMN}\n${ROW}" | awk -v num=$i '{print $num}' | tail -1`

    # Save the variable with its value as an env var
    export ${VAR}=${VAL}
  done

  # Create the tf resource block by replacing variable name with it's value
  sed -e "s/\${name}/${name}/g" \
    -e "s/\${location}/${location}/g" \
    -e "s/\${resource_group_name}/${resource_group_name}/g" \
    -e "s/\${tenant_id}/${tenant_id}/g" \
    -e "s/\${soft_delete_retention_days}/${soft_delete_retention_days}/g" \
    -e "s/\${sku_name}/${sku_name}/g" \
    -e "s/\${object_id}/${object_id}/g" \
    -e "s/\${key_permissions}/${key_permissions}/g" \
    -e "s/\${secret_permissions}/${secret_permissions}/g" \
    template/main.tf >> tf_ansible/kv-main.tf

  # Append a newline to kv-main.tf file
  echo >> tf_ansible/kv-main.tf
done

rm sql_output.txt
