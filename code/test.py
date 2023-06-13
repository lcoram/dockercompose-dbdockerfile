import psycopg2

try:
    conn = psycopg2.connect("dbname='test' user='postgres' host='db' password='secret'")
except:
    print("I am unable to connect to the database \n")

cur = conn.cursor()
cur.execute("SELECT * FROM timeseries;")
rows = cur.fetchall()
print("Data: ", cur.rowcount)
print("\n")
for row in rows:
    print(row)

cur.close()
conn.close()