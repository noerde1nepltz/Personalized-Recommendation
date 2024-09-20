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