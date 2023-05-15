FROM eclipse-temurin

### Install ruby & jekyll
RUN apt-get update
RUN apt -y install wget
RUN apt -y install make build-essential ruby ruby-dev
RUN apt -y install dotnet-sdk-6.0
RUN apt -y install nodejs
RUN apt -y install npm
RUN gem install jekyll bundler
#RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
ENV GEM_HOME $HOME/gems
ENV PATH $HOME/gems/bin:$PATH

RUN npm install -g fsh-sushi

#RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
#RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
# PATH for firely terminal
#RUN echo 'export PATH="$PATH:/root/.dotnet/tools"' >> ~/.bashrc
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
#RUN source ~/.bashrc


### Install dotnet
RUN dotnet tool install -g firely.terminal
ENV PATH /root/.dotnet/tools:$PATH
