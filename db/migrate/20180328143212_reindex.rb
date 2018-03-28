class Reindex < ActiveRecord::Migration[5.1]
  Guarantee.reindex
end
