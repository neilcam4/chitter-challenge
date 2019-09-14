describe '.all' do
  it 'retuens a list of peeps' do
    peeps = Peeps.all
    connection = PG.connect(dbname: 'peep_manager_test')

    connection.exec("INSERT INTO peeps (peep) VALUES ('Welcome to Chitter');")
    connection.exec("INSERT INTO peeps (peep) VALUES ('This is my first Peep');")
    connection.exec("INSERT INTO peeps (peep) VALUES ('Peeping to my peeps');")

peeps = Peeps.all

expect(peeps).to include('Welcome to Chitter')
expect(peeps).to include('This is my first Peep')
expect(peeps).to include('Peeping to my peeps')
  end
end
