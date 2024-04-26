Rails.application.routes.draw do
    root 'staticpages#top'
    resource :pokemons
end
