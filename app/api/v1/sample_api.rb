module V1
  class SampleAPI < Base
    namespace "sample"

    get "hello" do
      { :hello => "world" }
    end

    get "secret" do
      guard!
      { :secret => "only smart guys can see this ;)" }
    end
  end
end
