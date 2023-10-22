import rebrick as rb
import json
import pandas as pd
from urllib.request import urlopen

## Code to edit and create the "master lego set dictionary" ##

## Accepts a lego set ID and returns: Name, image, and a list of parts

# API init
rb.init("e45f779f125a6a6e0a3508e5726b187b", "caseyc", "Budder0100!")
print(rb.lego.get_part(851029).read())
# Obtain Lego Sets given aprams
print("Getting sets...")
# Change params if necessary (ex we need to run demos)
response = rb.lego.get_sets(min_year=2000, max_year=2022, min_pieces=30, max_pieces=50)
print("Sets get!")

# Convert HTTPResponse into JSON
data = response.read().decode('utf-8')
json_obj = json.loads(data)

print("Building dict...")
# Splice out dict to become Dict{"set_num: xxx" {name, num_parts, set_img_url}}
results = json_obj["results"]
df = pd.DataFrame(results)
df.set_index("set_num", inplace=True)
df = df[["name", "num_parts", "set_img_url"]]
print("dict built!")

# Add in parts list into each set_num entry

# Null entries
df["parts_list"] = [[] for _ in range(len(df))]
# Query API to get elements from each set
for set_num in df.index:
    print(set_num)
    parts = rb.lego.get_set_elements(set_num, part_details=True).read().decode('utf-8')
    parts_json = json.loads(parts)
    parts_results = parts_json["results"]
    parts_parts = parts_results[0]["part"]
    print(parts_parts)
    parts_df = pd.DataFrame(parts_parts)
    parts_df = parts_df[["part_num", "part_img_url"]]
    df.at[set_num, "parts_list"] = parts_df
    print(parts_df)

# Convert the DataFrame to a dictionary
result_dict = df.to_dict(orient="index")
print("dict built!")

print(result_dict)

# Save JSON File
save_file = open("json/set_to_set_info.json", "w")  
json.dump(result_dict, save_file, indent = 4)
save_file.close()