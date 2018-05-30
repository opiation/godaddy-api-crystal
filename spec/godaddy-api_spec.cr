require "./spec_helper"

describe Godaddy::Api::Client do
  describe "#initialize" do
    context "when given API key and API secret" do
      client = Godaddy::Api::Client.new(
        "AB",
        "CD"
      )

      it "sets API key and API secret" do
        client.key.should eq("AB")
        client.secret.should eq("CD")
      end
    end
  end
end
