require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it "gets a list of cats" do
      Cat.create(
        name: 'Oscar',
        age: 5,
        about: 'Swipe right if youre feline fine and ready to mingle! Im a whisker-twitching aficionado of belly rubs and cardboard boxes, seeking a purr-fect partner for lazy afternoons and midnight zoomies.',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      )

      # Make a request
      get '/cats'

      cat = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
    end
  end
end

describe "POST /create" do
  it "creates a cat" do
    # The params we are going to send with the request
    cat_params = {
      cat: {
        name: 'Garfield',
        age: 6,
        about: 'Cat-ch me if you can! Im a sophisticated tabby with a penchant for gourmet treats and adventurous window sill exploration, searching for a companion to share catnip dreams and cozy cuddles.',
        image: 'https://images.unsplash.com/photo-1573865526739-10659fec78a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80'
      }
    }

    # Send the request to the server
    post '/cats', params: cat_params

    # Assure that we get a success back
    expect(response).to have_http_status(200)

    # Look up the cat we expect to be created in the db
    cat = Cat.first

    # Assure that the created cat has the correct attributes
    expect(cat.name).to eq 'Garfield'
  end
  it "doesn't create a cat without a name" do
    cat_params = {
      cat: {
        age: 9,
        about: 'Lets paws and reflect on the possibilities! Im a playful calico with a love for string toys and sunbeams, on the hunt for a fellow feline aficionado to enjoy catnaps and spontaneous feather wand sessions.',
        image: 'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1049&q=80'
      }
    }
    # Send the request to the  server
    post '/cats', params: cat_params
    # expect an error if the cat_params does not have a name
    expect(response.status).to eq 422
    # Convert the JSON response into a Ruby Hash
    json = JSON.parse(response.body)
    # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
    expect(json['name']).to include "can't be blank"
  end
end

