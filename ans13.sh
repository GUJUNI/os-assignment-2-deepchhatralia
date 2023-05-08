
read -p "Enter customer number, bill number, or customer name: " query

# Use awk to search for the query in the input file and calculate the bill
awk -v query="$query" 'BEGIN { FS=":"; OFS="\t" }
{
    if ($2 == query || $1 == query || $3 == query) {
        units_consumed = $7 - $8
        rate = 5.50
        fixed_charge = 150.00
        energy_charge = units_consumed * rate
        total_bill = fixed_charge + energy_charge
        
        printf "Bill No: %s\nCustomer No: %s\nCustomer Name: %s\nAddress: %s\nCity: %s\nPin Code: %s\nCurrent Meter Reading: %s\nPrevious Meter Reading: %s\nUnits Consumed: %s\nRate per Unit: Rs. %s\nFixed Charge: Rs. %s\nEnergy Charge: Rs. %s\nTotal Bill: Rs. %s\n", $1, $2, $3, $4, $5, $6, $7, $8, units_consumed, rate, fixed_charge, energy_charge, total_bill

    }
}' customer.txt

