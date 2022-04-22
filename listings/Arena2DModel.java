interface Arena2DModel {

  // Checks whether an agent with the given name exists in the environment 
  boolean containsAgent(String name);

  // Retrieves the set of agent identifiers of all the agents currently existing into the environment 
  Set<String> getAllAgents();

  // Retrieves the width/height of the environment 
  int getWidth(); int getHeight();

  // Checks whether a given position is inside/outside the environment 
  boolean isPositionInside(Vector2D position)
  boolean isPositionOutside(Vector2D position);

  // Retrieves an agent's absolute position in the environment, given its name 
  Vector2D getAgentPosition(String agent);

  // Retrieves an agent name's given its absolute position, or nothing, if no agent is present in the provided position 
  Optional<String> getAgentByPosition(Vector2D position);

  // Retrieves an agent absolute orientation given its name 
  Orientation getAgentDirection(String agent);

  // Updates an agent's pose (absolute position + absolute orientation), given its name 
  boolean setAgentPose(String agent, Vector2D position, Orientation orientation);

  // Puts an agent (selected by name) into a random pose (absolute position + absolute orientation) 
  boolean setAgentPoseRandomly(String agent);

  // Moves an agent (selected by name) of a given amount of steps in a relative direction 
  boolean moveAgent(String agent, int stepSize, Direction direction);

  // Checks whether two agents are close to each others, given their names 
  boolean areAgentsNeighbours(String agent, String neighbour);

  // Gets the set of all the agents which are close to the provided one  
  Set<String> getAgentNeighbours(String agent);

  // Retrieves the actual positions surrounding an agent, indexed by relative direction  
  Map<Direction, Vector2D> getAgentSurroundingPositions(String agent);
}
