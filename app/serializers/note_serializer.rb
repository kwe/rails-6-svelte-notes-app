class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
end
