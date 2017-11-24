module KonoMailup
  class TestApisController < ApplicationController

    before_action :load_client


    def list

    end


    private
    def load_client
      @client = KonoMailup::API.new
    end

  end
end