import numpy as np
import pickle

# age = 30
# height = 74
# weight = 160
# sex = 1
# married = 1
# work = 1
# res = 1
# smoke = 1
# hyper = 0
# heart = 0
# agl = 80

def mlearn(age, height, weight, sex, married, work, res, smoke, hyper, heart, agl):
    loaded_model = pickle.load(open("finalized_model.sav", 'rb'))
    data = []

    age=float(age)
    height=float(height)
    weight=float(weight)
    sex=float(sex)
    married=float(married)
    work=float(work)
    res=float(res)
    smoke=float(smoke)
    hyper=float(hyper)
    heart=float(heart)
    agl=float(agl)

    bmi = (weight * 0.45359237)/((height * 0.0254 )*(height * 0.0254 ))
    data.append(hyper)
    data.append(heart)
    data.append(agl)
    data.append(bmi)
    data.append(sex)
    data.append(age)
    data.append(married)
    data.append(work)
    data.append(res)
    data.append(smoke)
    new_data = np.array([data])
    results = str(loaded_model.predict(new_data)[0])

    return results

# mlearn(age, height, weight, sex, married, work, res, smoke, hyper, heart, agl)

# print(results)
