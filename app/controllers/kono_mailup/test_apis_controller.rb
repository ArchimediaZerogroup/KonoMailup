module KonoMailup
  class TestApisController < ApplicationController

    before_action :load_client


    def list

    end


    private
    def load_client
      @client = KonoMailup::ApiBuilder.client
    end

  end
end