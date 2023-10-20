import streamlit as st
import plotly.express as px
import requests
import os
import sys
from PIL import Image
from pathlib import Path

# Create the filepath to the system where the main folder for the application lives:
sys.path.insert(0, os.path.join(Path(__file__).parents[1]))
# Import the created class from our file
from mongo_connect import MongoLite

st.title("Data Charting Page")
st.write("Use Charts to Query the Data")

# create instance of Mongo Class
c = MongoLite("student_math")

# Take in a user input:
vis_to_use = ["scatterplot", "histogram", "bar chart"]
type_vis = st.selectbox(
    "Select the type of visualization you would like to see:", options=vis_to_use
)

if type_vis == "scatterplot":
    answer = st.selectbox(
        "Select a Column to Visualize on the X-axis", options=sorted(c.get_keys())
    )
    answer2 = st.selectbox(
        "Select a Column to Visualize on the Y-axis", options=sorted(c.get_keys())
    )
    if answer and answer2:
        try:
            st.plotly_chart(
                px.scatter(c.get_data(), x=answer, y=answer2),
                use_container_width=True,
            )
        except BaseException:
            print("Error visualizing those combination of columns!")

elif type_vis == "bar chart":
    answer = st.selectbox(
        "Select a Column to Visualize on the X-axis", options=sorted(c.get_keys())
    )
    answer2 = st.selectbox(
        "Select a Column to Visualize on the Y-axis", options=sorted(c.get_keys())
    )
    if answer and answer2:
        try:
            st.plotly_chart(
                px.bar(c.get_data(), x=answer, y=answer2),
                use_container_width=True,
            )
        except BaseException:
            print("Error visualizing those combination of columns!")

elif type_vis == "histogram":
    answer = st.selectbox(
        "Select a Column to Visualize on the X-axis", options=sorted(c.get_keys())
    )
    if answer:
        try:
            st.plotly_chart(
                px.histogram(c.get_data(), x=answer),
                use_container_width=True,
            )
        except BaseException:
            print("Error visualizing those combination of columns!")
