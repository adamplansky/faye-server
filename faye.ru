require 'faye'
Faye::WebSocket.load_adapter('thin')
bayeux = Faye::RackAdapter.new(
      :mount => '/faye',
      :timeout => 25,
      :engine => {
        :type => 'redis',
        :host => 'pub-redis-16675.eu-west-1-2.2.ec2.garantiadata.com',
        :port => '16675',
        :password => '17jcmeFNk2p2Xv03',
        :database => 1

        )
run bayeux