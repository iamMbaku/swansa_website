class CreateSwansaRegs < ActiveRecord::Migration[5.2]
  def change
    create_table :swansa_regs do |t|

      t.timestamps
    end
  end
end
