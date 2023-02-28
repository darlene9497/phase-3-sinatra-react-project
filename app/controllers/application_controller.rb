class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # pupils table
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

  put '/pupils' do
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

  
end
