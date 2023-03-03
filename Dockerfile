FROM eclipse-temurin

### Install ruby & jekyll
RUN apt-get update
RUN apt -y install wget
RUN apt -y install make build-essential ruby ruby-dev
RUN apt -y install dotnet-sdk-6.0
RUN apt -y install nodejs
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
#ENV PATH /root/.dotnet/tools:$PATH
#RUN wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
#RUN dpkg -i packages-microsoft-prod.deb
#RUN rm packages-microsoft-prod.deb
#
#RUN apt-get update
#RUN apt-get install -y dotnet-sdk-6.0
#
#RUN dotnet tool install -g firely.terminal
