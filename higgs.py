import MySQLdb
try:
	conn = MySQLdb.connect(
			host = 'localhost',
			user = 'root',
			passwd = 'secret',
			db = 'mixology'
			)
except MySQLdb.Error, e:
	print "No SQl connection"

def clean_up(drinks):
	
def recipe(drink_order):
	cursor=conn.cursor()
	#query="select * from drinks where name like '%s%' or particle like '%s%'" % (drink_order,drink_order)
	query="select * from drinks where name like '%"+drink_order+"%' or particle like '%"+drink_order+"%'"
	cursor.execute(query)
	if(cursor.rowcount > 0):
		data=cursor.fetchall()	
		drinks = []
		for row in data:
			ingredients=row[3].split('#');	
			ings = []
			for component in ingredients:
				this_component=component.split('*')
				query_2="select * from ingredients where id=%d" % (int(this_component[1]))
				cursor.execute(query_2)
				ing=cursor.fetchone()
				ings.append([this_component[0],ing[2],ing[3],ing[5]])
			drinks.append([row,ings])	
		final_drink = clean_up(drinks)
		return final_drink
	if(cursor.rowcount == 0):
		print 'Not found'
