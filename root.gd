extends Spatial


func _ready():
	var settings_file = File.new()
	var check = settings_file.open("res://test.json", File.READ) == OK
	assert(check)
	
	var settings_text = settings_file.get_as_text()
	settings_file.close()
	
	var settings_parse = JSON.parse(settings_text)
	
	check = settings_parse.error == OK
	assert(check)
	
	var result = settings_parse.result
	
	var test = result["var"]
	var test2 = [1]
	
	check = test.has(1)
	
	assert([1].has(1))
	
	if [1] == test:
		print("They're equal")
	else:
		print("They're not equal")
	
	if test.has(1):
		print("%d is in the array" % [1])
	
	if test2.has(1):
		print("%d is in the other array" % [1])
