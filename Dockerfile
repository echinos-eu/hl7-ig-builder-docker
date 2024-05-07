FROM eclipse-temurin

### Install ruby & jekyll
RUN apt-get update
RUN apt -y install wget
RUN apt -y install make build-essential ruby ruby-dev
RUN apt -y install dotnet-sdk-6.0
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt update
RUN apt -y install git
RUN apt -y install nodejs
RUN node -v
RUN npm install -g npm@latest
RUN npm -v
RUN gem install jekyll bundler

ENV GEM_HOME $HOME/gems
ENV PATH $HOME/gems/bin:$PATH

RUN npm install -g fsh-sushi

### Install firely terminal
RUN dotnet tool install -g firely.terminal
ENV PATH /root/.dotnet/tools:$PATH

### Install IG Publisher
RUN wget https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -P /opt/publisher

### Install hapi-fhir-cli
RUN wget https://github.com/hapifhir/hapi-fhir/releases/download/v7.0.2/hapi-fhir-7.0.2-cli.zip -P /opt/hapi-cli
RUN unzip /opt/hapi-cli/*.zip -d /opt/hapi-cli/ && rm /opt/hapi-cli/*.zip

