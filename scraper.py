
import requests
import pandas as pd

#Data Extraction

url = 'https://fantasy.premierleague.com/api/bootstrap-static/'
r = requests.get(url)
json = r.json()
json.keys()


#Building data frame

elements_df = pd.DataFrame(json['elements'])
elements_types_df = pd.DataFrame(json['element_types'])
teams_df = pd.DataFrame(json['teams'])

elements_df.head()
elements_df.columns

slim_elements_df = elements_df[['web_name','team','element_type','total_points','points_per_game','value_season',
                                'minutes','selected_by_percent','now_cost',
                                'chance_of_playing_this_round','chance_of_playing_next_round']]

slim_elements_df['position'] = slim_elements_df.element_type.map(elements_types_df.set_index('id').singular_name)


slim_elements_df.to_excel(r'C:\Users\TOSHIBA\Desktop\fpl20-21.xlsx', index = False)



