if ["${RAILS_ENV}" = "prodction"]
then 
    bundle exec rails assets:precompile
fi