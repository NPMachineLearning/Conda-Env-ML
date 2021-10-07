:: To start miniconda command line. Change this path to activate.bat in your installed miniconda location
CALL D:\miniconda3\Scripts\activate.bat

:: Activate conda environment. Changable depend on how did you create miniconda environment
CALL conda activate .\env

:: Install jupyter_http_over_ws required for colab local connect
CALL pip install --upgrade jupyter_http_over_ws>=0.0.7

:: Install tensorflow and tensorflow-hub for machine learning, skip automatically if installed
CALL pip install --upgrade tensorflow tensorflow-hub

:: Start jupyter_http_over_ws follow google colab local connect instruction
CALL jupyter serverextension enable --py jupyter_http_over_ws

:: Start jupyter notebook follow google colab local connect instruction
CALL jupyter notebook --NotebookApp.allow_origin='https://colab.research.google.com' --port=8888 --no-browser

:: Press Control + c on keyboard to shutdown or close terminal
