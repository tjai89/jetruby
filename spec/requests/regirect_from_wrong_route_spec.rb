require "spec_helper"

describe "Wrong route" do
  it "redirected to root" do
    get "/inexistent_url911"
    response.should redirect_to "/"
  end
end
