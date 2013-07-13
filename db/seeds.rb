require 'rubygems'
require 'faker'
require 'activerecord'
 
$tasks = []

10.times do
  $tasks << Faker::Lorem.sentence
end

