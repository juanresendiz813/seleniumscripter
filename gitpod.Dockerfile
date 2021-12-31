FROM registry.gitlab.com/spiculedata/custom-gitpod-full:latest
        
RUN sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.0.4/2.13-2.0.4) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm'

RUN brew install maven 


RUN wget https://chromedriver.storage.googleapis.com/94.0.4606.61/chromedriver_linux64.zip 

RUN unzip chromedriver_linux64.zip 

RUN sudo mv chromedriver /workspace/seleniumscripter:/workspace/seleniumscripter

RUN sudo chown root:root /workspace/seleniumscripter:/workspace/seleniumscripter

RUN sudo chmod +x /workspace/seleniumscripter:/workspace/seleniumscripter
