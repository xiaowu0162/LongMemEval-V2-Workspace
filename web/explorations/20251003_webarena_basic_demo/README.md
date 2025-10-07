### Get Started

* Environment setup:
```
conda create -n webagent python=3.11
conda activate webagent
pip install browsergym agentlab
python -c "import nltk; nltk.download('punkt_tab')"
```

* Before you run the code the first time, you may need to run `playwright install` once and only once.

* Setting environment variables 
```
# These ports are assigned by Di on NLP12 and forwarded to NLP7
export SHOPPING_PORT=8082
export SHOPPING_ADMIN_PORT=8083
export REDDIT_PORT=8080
export GITLAB_PORT=8088
export WIKIPEDIA_PORT=8081
export MAP_PORT=443
export HOMEPAGE_PORT=8800
export RESET_PORT=7565 

# base urls
export WA_SHOPPING="http://${PUBLIC_HOSTNAME}:${SHOPPING_PORT}"
export WA_SHOPPING_ADMIN="http://${PUBLIC_HOSTNAME}:${SHOPPING_ADMIN_PORT}/admin"
export WA_REDDIT="http://${PUBLIC_HOSTNAME}:${REDDIT_PORT}/forums/all"
export WA_GITLAB="http://${PUBLIC_HOSTNAME}:${GITLAB_PORT}/explore"
export WA_WIKIPEDIA="http://${PUBLIC_HOSTNAME}:${WIKIPEDIA_PORT}/wikipedia_en_all_maxi_2022-05/A/User:The_other_Kiwix_guy/Landing"
export WA_MAP="http://${PUBLIC_HOSTNAME}:${MAP_PORT}"
export WA_HOMEPAGE="http://${PUBLIC_HOSTNAME}:${HOMEPAGE_PORT}"
```


### Run an experiment on WebArena (OpenAI Models):
```
export OPENAI_API_KEY=YOUR_OPENAI_KEY
python run_demo.py --task_name webarena.4 
```
* Note that the `.4` is the task id. You can do `python print_task_ids.py` to see all task ids.
* Feel free to explore the other arguments in run_demo.py
* The outputs will be logged to `results/`, which can be pretty large. I would recommend cloning this repo and running on `/local/` instead of `/home/`. You can play with the code and try to understand what the outputs mean. 


### Run an experiment on WebArena (Locally Served Models):
* First, ask Di to host the `model_name` you want at some port, e.g., 8001.
* Then,
```
export OPENAI_API_KEY=EMPTY
export OPENAI_BASE_URL=http://localhost:8001/v1
python run_demo.py --task_name webarena.4 --model_name model_name
```