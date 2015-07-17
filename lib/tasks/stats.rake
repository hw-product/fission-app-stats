namespace :fission_stats do

  desc 'Display stats in JSON'
  task :show, [:fission_stats] => :environment do |t, args|
    models = %w(users accounts sessions jobs repositories)
    output = {:counts => {}}
    models.each do |type|
      output[:counts][type.to_sym] = "Fission::Data::Models::#{type.singularize.capitalize}".constantize.count
    end
    puts output.to_json
  end

end
