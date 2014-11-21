require 'docker'

stdin = nil
stdout = []
stderr = []

ARGV.each_with_index do |image, index|

  stdin = StringIO.new(stdout.first) if index > 0

  container = Docker::Container.create(
    'Image' => image,
    'OpenStdin' => true,
    'StdinOnce' => true)

  thread = Thread.new(container, stdin) { |c, s| c.attach(stdin: s) }

  container.start
  stdout, stderr = thread.value
  container.delete
end

puts stdout
