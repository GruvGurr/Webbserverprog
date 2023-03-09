require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'sqlite3'
require 'bcrypt'

enable :sessions

#
def connect_to_db(path)
    db = SQLite3::Database.new(path)
    db.results_as_hash = true
    return db
end

#startsida
get("/") do
    slim(:login)
end

#plocka in datapasen
get('/albums') do
    db = SQLite3::Database.new("db/chinook-crud.db")
    db.results_as_hash = true
end

    

#inlogning
    #användarnamn, lösenord, moster
    
post("/inlogg") do
    session[:inlogg] = params[:banan]
    p params[:banan]

    redirect("/") #gå till get(/)
end

#skapa mosnter
    #create från CRUD
#kolla monster
    #read från CRUD
#lägga till mosnterdelar

#databas