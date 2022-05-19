import datetime


a, b, c = 0, 3, 3
start = datetime.datetime.now()
for i in range(100000000):
	a += b*2 + c - i
end = datetime.datetime.now()
print(f'a = {a}, {(end-start).microseconds * 1000} ms, {((end-start).microseconds * 1000)/100000000} speed iteration/ms')
