class RequestLogger
  def initialize(app)
    @app = app
  end

  def call(env)
    dup._call(env)
  end

  def _call(env)
    @start = Time.now
    query(env)
    @status, @headers, @response = @app.call(env)
    @stop = Time.now
    response(@start, @status, @headers, @response)
    [@status, @headers, @response]
  end

  def query(env)
    puts "================================================================================"
    puts "QUERY STRING:"
    puts env['QUERY_STRING']
  end

  def response(start, status, headers, resp)
    puts "TIME: #{Time.now - start} ms."
    puts "RESPONSE: "
    resp.each {|line| puts line.to_s }
    puts "============="
    puts resp
    puts "================================================================================"
  end

end
