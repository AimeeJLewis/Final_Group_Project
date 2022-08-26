import numpy as np
import pickle

loaded_model = pickle.load(open("finalized_model.sav", 'rb'))

new_data = np.array([[0, 0, 162.23, 27.3, 0, 56, 1, 0, 0, 0]])

print(loaded_model.predict(new_data))