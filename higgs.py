from ingredients import particle_config, quark_ingredient, quark_symbols, measurements
"""proton: uud: up/ down : ice + vodka : 2 scoops of ice 1 vshot of vodka
proton --> uud				particle.config
							loop thru particle.config
u --> up, ice, 2			convert_sym_to_ing, convert_sym_to_quark(symbol), num
d --> down, vodka, 1

ice --> scoops
vodka --> shot

"""
def write_recipe(p_name):
	particle = Drink(p_name)
	config_dict = convert_config_to_elp(particle.config)

	order =[]

	for quark_flavor, number in config_dict.iteritems():
		ingredient = convert_quark_to_ing(quark_flavor)

		print key, value

class Drink:
	def __init__(self, p_name):
		self.particle= p_name
		self.config = particle_config[p_name]

class ElemParticle:
	def __init__(self, particle_name):
		self.num = number
		self.measure = measurement
		self.ingredient= quark_to_ing(particle_name)

	def quark_to_ing(self, quark_flavor):
		return quark_ingredient[quark_flavor]

	def config_to_elemp(self, config):
		ingredients = {}
		for element in config:
			ingredients[element] = ingredients.get(element,0) + 1
		return ingredients

	def sym_to_quark(self, symbol):
		return quark_symbols[symbol]
