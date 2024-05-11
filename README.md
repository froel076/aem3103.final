# Paper Airplane Numerical Study
  Final Project: AEM 3103 Spring 2024

  - By: Ellen Froelich

  ## Summary of Findings
  <Show the variations studied in a table>

  The variables studied in this experiment were velocity, gamma (flight path angle), height, range, and time.

  Summarized what was accomplished in this study.  Describe 2-4 observations from simulating the flight path.
  Reference the figures below as needed.

  By simulating flight path angle along with velocity with numerous different randomized runs, we are able to see if there were any consistent trends. It's apparent in figure 2 that there was in fact a trend with
  the height and range as the velocity and gamma were being randomly generated. It was also aparent from figure 1 that height would rapidly increase with both velocity and gamma varying.

  *If the analysis falls short of the goal, this is your chance to explain what was done or what were the barriers.*
 
  # Code Listing
  A list of each function/script and a single-line description of what it does.  The name of the function/script should link to the file in the repository on GitHub.
  In this project, I used two scripts. The main script I used is called final_project.m, which has all the code for each of the questions. I also have another script called EqMotion.m which was used to show the 
  xdot equation that ended up being linked onto the main script to perform ode23.

  # Figures

  ## Fig. 1: Single Parameter Variation
  <2D trajectory simulated by varying single parameter at at time>
  <The above plot should also show the nominal trajectory>
  ![image](https://github.com/froel076/aem3103.final/assets/168198103/1f44b957-e67b-4b1c-96db-a5fcbf6975c7)
  ![image](https://github.com/froel076/aem3103.final/assets/168198103/338bb751-35ab-4e50-a9f7-aa8d3899b35f)

These two plots show the height and range when velocity is minimum, maximum, and nomial at nomial gamma and vice versa. Both these graphs have a downward trend with some variation within the constant nomial gamma
graph.

  ## Fig. 2: Monte Carlo Simulation
  <2D trajectories simulated using random sampling of parameters, overlay polynomial fit onto plot.>
  ![image](https://github.com/froel076/aem3103.final/assets/168198103/681c541d-d50a-4604-a396-c7785f592273)

This graph shows the height and range of a 100 trajectories from randomly chosen gamma's and velocity's. All these trajectories have similar paths and the average of these was found from a polynomial curvefitted
to this graph. 


 ## Fig. 3: Time Derivatives
 <Time-derivative of height and range for the fitted trajectory>
 ![image](https://github.com/froel076/aem3103.final/assets/168198103/e705d198-2047-4654-9204-fad9c221e61c)
 ![image](https://github.com/froel076/aem3103.final/assets/168198103/1cfc3345-4af3-44fc-89a6-addd5d9861d8)

These images show the derivative of range with respect to time and height with respect to time. The range equation is a first degree polynomial which is why its graph is linear. The height equation is a fifth
degree polynomial which is why its graph is non-linear.
 
 # Animation
  ## Point-Mass Animation
  Below is the figure of the ending of the animation. We weren't able to figure out how to convert this into a gif.
  ![image](https://github.com/froel076/aem3103.final/assets/168198103/e79850ca-e908-4cd0-8bca-53c69681446b)


 
