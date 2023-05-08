

awk -F ":" '{
    # calculate total sales for each salesman and store in an array
    salesman_sales[$1] += $2 + $3 + $4

    # calculate total sales for each product and store in an array
    product_sales["Product 1"] += $2
    product_sales["Product 2"] += $3
    product_sales["Product 3"] += $4
}
END {
    # calculate total sales for the company
    total_sales = 0
    for (salesman in salesman_sales) {
        total_sales += salesman_sales[salesman]
    }

    # find the highest sold product
    max_sales = 0
    for (product in product_sales) {
        if (product_sales[product] > max_sales) {
            max_sales = product_sales[product]
            highest_product = product
        }
    }

    # find the best salesman
    max_sales = 0
    for (salesman in salesman_sales) {
        if (salesman_sales[salesman] > max_sales) {
            max_sales = salesman_sales[salesman]
            best_salesman = salesman
        }
    }

    # find the worst salesman
    min_sales = "inf"
    for (salesman in salesman_sales) {
        if (salesman_sales[salesman] < min_sales) {
            min_sales = salesman_sales[salesman]
            worst_salesman = salesman
        }
    }

    # print the results
    printf "Total sales: %d\n", total_sales
    printf "Highest sold product: %s\n", highest_product
    printf "Best salesman: %s\n", best_salesman
    printf "Worst salesman: %s\n", worst_salesman
}' sales.dat

