run lambda { |env|
  remote_ip = env['HTTP_X_FORWARDED_FOR'] || env['REMOTE_ADDR']
  remote_ip = remote_ip.to_s.scan(/[\d.]+/).first
  [ 200, {'Content-Type'=>'text/plain'}, [remote_ip] ]
}
