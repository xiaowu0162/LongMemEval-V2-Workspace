import gymnasium as gym
import browsergym.webarena  # register webarena tasks as gym environments

# start a webarena task
env = gym.make("browsergym/webarena.4")
...

# list all the available webarena tasks
env_ids = [id for id in gym.envs.registry.keys() if id.startswith("browsergym/webarena")]
print("\n".join(env_ids))
