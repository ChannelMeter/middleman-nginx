FROM octohost/ruby-2.1

RUN gem install therubyracer --no-rdoc --no-ri

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update

RUN apt-get -y -o Dpkg::Options::="--force-confnew"  install nginx

RUN mkdir /srv/www

ADD default /etc/nginx/sites-available/default
ADD nginx.conf /etc/nginx/nginx.conf
 
