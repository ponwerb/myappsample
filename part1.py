import time
startNumber = 382345
startString = str(startNumber)
li = list(startString)
x = 1
i = 1
newtesting = 23
gt = 1
nr = 0
while x == 1:
	#startString = str(startNumber)
	#li = list(startString)
	i = 1
	y = 0
	z = 1
	while i < len(li):
		temp = ""
		for k in li:
			temp = temp + k
		startNumber = int(temp)


		if li[i-1] == li[i]:
			y = 1
		if li[i-1] > li[i]:
			li[i] = str(int(li[i]) + 1)
			z = 0
			print(li)
			break

		if startNumber > 843167:
			print("done")
			print(nr)
			time.sleep(20)
		i += 1
	if z == 1 and y == 1:
		print(li)
		nr += 1
	if z == 1:
		startString = ""
		for k in li:
			startString = startString + k
		startNumber = int(startString)
		startNumber += 1
		startString = str(startNumber)
		li = list(startString)
