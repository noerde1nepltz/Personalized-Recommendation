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