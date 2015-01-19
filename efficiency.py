import json

actual_values = [1,0,1,0,1,0,0,0,1,1,1,1,1,0,1,0,1,0,1]
predicted_values = [1,1,1,0,0,0,0,0,1,1,0,1,1,0,1,1,1,0,1]

def calculate_performance():
	performance = {}
	tp = fn = fp = tn = 0
	for i in range (len(actual_values)):
		if actual_values[i] == 1 and predicted_values[i] ==1:
			tp+=1
		if actual_values[i] == 1 and predicted_values[i] ==0:
			fn+=1
		if actual_values[i] == 0 and predicted_values[i] ==1:
			fp+=1
		if actual_values[i] == 0 and predicted_values[i] ==0:
			tn+=1
	performance['sensitivity'] = tp / float(tp+fn)
	performance['specificity'] = tn / float(tn+fp)
	performance['accuracy'] = tn + tp / float(tn+fp+tp+fn)

	return performance

performance = calculate_performance()
print json.dumps(performance)
