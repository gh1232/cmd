import csv
with open('cleanNVG.csv', newline='') as csvfile:
    customer_data = csv.reader(csvfile)
    for row in customer_data:
        cursor.execute(sql, tuple(row))
