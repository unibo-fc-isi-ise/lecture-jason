public class Arena2DEnvironment extends Environment {

  private Arena2DModel model;
  private Arena2DView view;

  @Override
  public void init(String[] args) {
    // TODO initialize the model
    // TODO initialize the view and show it
  }

  // The environment is not initially aware of the agents in it. This method is aimed at registering agents into the model on the fly
  private void initializeAgentIfNeeded(String agentName) { ... }

  @Override 
  public Collection<Literal> getPercepts(String agName) {
    initializeAgentIfNeeded(agName);
    // TODO add percepts to the agent named "agName"
    // percepts are of 4 kinds: robot(DIR), obstacle(DIR), free(DIR), or neighbour(NAME)
  }
  
  @Override 
  public boolean executeAction(String ag, Structure action) {
    initializeAgentIfNeeded(ag);
    if (RAND.nextDouble() < model.getSlideProbability()) {
      // TODO randomly fails
    } else if (/* action is move(DIRECTION)*/) {
      // TODO move agent "ag" towards DIRECTION
    } else if (/* action is move(random)*/) {
      // TODO move agent "ag" towards a random direction
    }
    // TODO update the view
  }
}
