yml       = YAML.load_file(File.join(Rails.root, "config", "redis.yml"))
config    = yml["#{Rails.env}"]
namespace = "social_bike".to_sym

$redis = Redis.new(config)
$social_bike_redis = Redis::Namespace.new(namespace, redis: $redis)

$redis.flushdb if Rails.env == 'test'
