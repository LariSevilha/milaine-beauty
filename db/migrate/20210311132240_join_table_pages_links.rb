class JoinTablePagesLinks < ActiveRecord::Migration[5.0]
  def change
    create_join_table :pages, :links do |t|
      t.index [:page_id, :link_id], name: "index_page_link"
      t.index [:link_id, :page_id], name: "index_link_page"
    end
  end
end
