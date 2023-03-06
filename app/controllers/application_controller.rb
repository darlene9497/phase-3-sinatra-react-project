class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Pupils table
  get '/pupils' do
    pupil = Pupil.all.order(:name)
    pupil.to_json
  end

  get '/pupils/:id' do
    pupil = Pupil.find(params[:id])
    pupil.to_json
  end

  get '/edit/:id' do
    pupil = Pupil.find(params[:id])
    pupil.to_json
  end

  post '/pupils' do
   pupil = Pupil.create(
     name: params[:name],
     age: params[:age],
     gender: params[:gender],
     parent_contact: params[:parent_contact],
     teacher_id: params[:teacher_id],
     stream_name: params[:stream_name],
     subject_id: params[:subject_id]
  )
   pupil.to_json
  end

  patch '/pupils/:id' do
    pupil = Pupil.find(params[:id])
    pupil.update(
      name: params[:name],
      age: params[:age],
      gender: params[:gender],
      parent_contact: params[:parent_contact],
      teacher_id: params[:teacher_id],
      stream_name: params[:stream_name],
      subject_id: params[:subject_id]
    )
    pupil.to_json
  end

  delete '/pupils/:id' do
    pupil = Pupil.find(params[:id])
    pupil.destroy
    pupil.to_json
  end

  # Teachers table
  get '/teachers' do
    teacher = Teacher.all.order(:name)
    teacher.to_json
  end

  get '/teachers/:id' do
    teacher = Teacher.find(params[:id])
    teacher.to_json
  end

  post '/teachers' do
    teacher = Teacher.create(
      name: params[:name],
      employee_id: params[:employee_id]
    )
    teacher.to_json
  end

  patch '/teachers/:id' do
    teacher = Teacher.find(params[:id])
    teacher.update(
      name: params[:name],
      employee_id: params[:employee_id]
    )
    teacher.to_json
  end

  delete '/teachers/:id' do
    teacher = Teacher.find(params[:id])
    teacher.destroy
    teacher.to_json
  end

  # Streams table
  get '/streams' do
    stream = Streams.all.order(:name)
    stream.to_json
  end

  get '/streams/:id' do
    stream = Stream.find(params[:id])
    stream.to_json
  end

  post '/streams' do
    stream = Stream.all(
      name: params[:name],
    )
    stream.to_json
  end

  patch '/streams/:id' do
    stream = Stream.find(params[:id])
    stream.update(
      name: params[:name],
    )
    stream.to_json
  end

  delete '/streams/:id' do
    stream = Stream.find(params[:id])
    stream.destroy
    stream.to_json
  end

  # Subjects table
  get '/subjects' do
    subject = Subject.all.order(:name)
    subject.to_json
  end

  get '/subjects/:id' do
    subject = Subject.find(params[:id])
    subject.to_json
  end

  post '/subjects' do
    subject = Subject.create(
      name: params[:name],
    )
    subject.to_json
  end

  patch '/subjects/:id' do
    subject = Subject.find(params[:id])
    subject.update(
      name: params[:name],
    )
    subject.to_json
  end

  delete '/subjects/:id' do
    subject = Subject.find(params[:id])
    subject.destroy
    subject.to_json
  end
  # extra routes
  get '/rand' do
    random = rand(000000...10000)
    {random: random}.to_json
  end

  post '/userdata' do
    {username: params[:username], pass: params[:password]}.to_json
  end

end
