class OrderImporter

  def import
    puts "adding orders..."
    Order.transaction do
      #order that has already been delivered
      Order.create(cuisine: "Chinese", 
                   destination: "0897 laser street",
                   delivery_date: "2016-01-01",
                   delivery_time: "2016-01-01 15:23:00",
                   price: 20,
                   comment: "ring for 303",
                   orderer_id: 1,
                   deliverer_id: 2,
                   delivery_status: 3)
      #order that is pending (no deliverer_id yet)
      Order.create(cuisine: "Italian", 
                   destination: "5876 chaser street",
                   delivery_date: "2016-02-01",
                   delivery_time: "2016-02-01 16:23:00",
                   price: 10,
                   comment: "nut allergies",
                   orderer_id: 1,
                   delivery_status: 1)
      Order.create(cuisine: "French", 
                   destination: "2048 fraser street",
                   delivery_date: "2016-02-02",
                   delivery_time: "2016-02-02 18:23:00",
                   price: 20,
                   comment: "please come around the back",
                   orderer_id: 2,
                   deliverer_id: 1,
                   delivery_status: 1)
      #order that is being delivered
      Order.create(cuisine: "Chinese", 
                   destination: "laser street",
                   delivery_date: "2016-01-31",
                   delivery_time: "2016-01-31 15:23:22",
                   price: 20,
                   comment: "I am allergic to people",
                   orderer_id: 1,
                   deliverer_id: 3,
                   delivery_status: 2)

    end
  end
end