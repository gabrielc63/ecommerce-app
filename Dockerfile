FROM corgibytes/ruby-1.9.3

# RUN rm /etc/apt/sources.list 
# RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# RUN cat /etc/apt/sources.list
# RUN echo "deb archive.debian.org/debian-security jessie/updates main" > /etc/apt/sources.list.d/jessie.list 

# RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list
# RUN sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list
# RUN apt-get -o Acquire::Check-Valid-Until=false update

# RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com 7638D0442B90D010
# RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie main" > /etc/apt/sources.list.d/jessie.list
# RUN sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list
# RUN apt-get -o Acquire::Check-Valid-Until=false update
# RUN rm /etc/apt/sources.list 
# RUN echo "deb http://archive.debian.org/debian-security jessie/updates main" > /etc/apt/sources.list.d/jessie.list

# RUN apt-get update && apt-get install -y \
#     build-essential \
#     nodejs

WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
