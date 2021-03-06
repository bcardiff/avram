class CreateUsers::V20170127143149 < Avram::Migrator::Migration::V1
  def migrate
    create :users do
      add name : String
      add nickname : String?
      add age : Int32
      add joined_at : Time
      add average_score : Float64?
    end
  end

  def rollback
    drop :users
  end
end
