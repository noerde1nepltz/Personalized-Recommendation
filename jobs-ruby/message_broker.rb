module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Hash 4727
# Hash 5036
# Hash 8360
# Hash 7292
# Hash 1333
# Hash 1205
# Hash 4156
# Hash 9853
# Hash 6444
# Hash 6443
# Hash 3114
# Hash 1116
# Hash 4818
# Hash 7575
# Hash 1361
# Hash 9787
# Hash 1172
# Hash 3425
# Hash 7055
# Hash 8558
# Hash 5129
# Hash 6300
# Hash 3015
# Hash 6586
# Hash 1659
# Hash 3854
# Hash 3128
# Hash 5593
# Hash 6805
# Hash 7015
# Hash 2762
# Hash 3653
# Hash 7995
# Hash 5675
# Hash 8606
# Hash 2706
# Hash 1881
# Hash 2284
# Hash 3715
# Hash 4791
# Hash 9226
# Hash 6740
# Hash 8299
# Hash 4883
# Hash 6052
# Hash 3915
# Hash 8708
# Hash 5695
# Hash 1837
# Hash 1619
# Hash 9351
# Hash 1207
# Hash 4182
# Hash 1897
# Hash 4483
# Hash 7171
# Hash 9905
# Hash 7206
# Hash 4619
# Hash 2630
# Hash 5912
# Hash 5120
# Hash 1645
# Hash 5008
# Hash 5233
# Hash 3666
# Hash 3640
# Hash 8013
# Hash 2776
# Hash 9120
# Hash 3979
# Hash 1007
# Hash 9391
# Hash 8795
# Hash 3314
# Hash 4160
# Hash 2342
# Hash 7396
# Hash 3255
# Hash 7458
# Hash 5796
# Hash 6136
# Hash 2543
# Hash 9352
# Hash 2603
# Hash 5987
# Hash 7924
# Hash 6660
# Hash 1921
# Hash 6406
# Hash 4550
# Hash 3409
# Hash 4708
# Hash 6401
# Hash 3569
# Hash 1266
# Hash 4390
# Hash 2764
# Hash 3925
# Hash 6755
# Hash 1225
# Hash 6753
# Hash 6135
# Hash 9224
# Hash 1040
# Hash 5472
# Hash 6445
# Hash 2441
# Hash 8201
# Hash 8752
# Hash 1256
# Hash 9887
# Hash 7049
# Hash 2399
# Hash 5958
# Hash 1412
# Hash 6849
# Hash 9803
# Hash 5696
# Hash 7058
# Hash 4876
# Hash 8328
# Hash 3248
# Hash 4795
# Hash 7718
# Hash 9168
# Hash 4520
# Hash 1117
# Hash 3477
# Hash 7604
# Hash 4178
# Hash 8274
# Hash 7765
# Hash 8960
# Hash 4596
# Hash 3837
# Hash 4511
# Hash 7892
# Hash 9008
# Hash 6854
# Hash 1488
# Hash 3445
# Hash 1396
# Hash 5155
# Hash 2557
# Hash 1374
# Hash 9299
# Hash 9655
# Hash 3964
# Hash 3266
# Hash 4815
# Hash 9476
# Hash 5769
# Hash 9887
# Hash 8740
# Hash 2868
# Hash 7906
# Hash 6105
# Hash 2917
# Hash 4137
# Hash 1369
# Hash 5611
# Hash 6287
# Hash 2287
# Hash 7266
# Hash 3996
# Hash 9002
# Hash 1477
# Hash 9968
# Hash 8382
# Hash 1662
# Hash 9903
# Hash 1513
# Hash 4506
# Hash 9618
# Hash 3836
# Hash 3607
# Hash 1874
# Hash 7186
# Hash 9670
# Hash 9975
# Hash 1238
# Hash 8327
# Hash 1514
# Hash 7226
# Hash 1816
# Hash 4800
# Hash 5444
# Hash 4828
# Hash 7039
# Hash 7813
# Hash 9816
# Hash 1734
# Hash 7240
# Hash 6120
# Hash 5891
# Hash 9866
# Hash 9430
# Hash 5135
# Hash 4295
# Hash 6708
# Hash 3722
# Hash 8503
# Hash 2771
# Hash 9405
# Hash 6783
# Hash 4539
# Hash 4638
# Hash 4647
# Hash 5581
# Hash 1408
# Hash 6709