class UpdateProductWorker
    include Sidekiq::Worker
  
    def perform()
        Product.last.update(name: "aaaaa")
    end
end