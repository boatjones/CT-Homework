import streamlit as st

''' BEGIN DISABLED SECTION
	Sadness that none of this worked.  Apparently, Streamlit still lacks
    page navigation options other than the sidebar.  So after a valiant try
    I've had to abandon this.  It's apparently high on Streamlit's docket to 
    address.

from streamlit_option_menu import option_menu
from streamlit_extras.switch_page_button import switch_page
from pages.vis import vis

# sidebar for navigation
with st.sidebar:
    selected = option_menu(
        menu_title="Navigation",
        options=["Home", "Image Return", "Query", "Visualizations"],
    )

# navigation option executes
if selected == "Home":
    st.text("Home page")
if selected == "Image Return":
    switch_page(image_return)
if selected == "Query":
    switch_page(query)
if selected == "Visualizations":
    switch_page(vis)
END DISABLED SECTION '''

st.title("Simple Database Query App")
st.write("Use the sidebar to select the data query page done via visualizations")




