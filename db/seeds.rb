ApplicationRecord.transaction do
  Food.delete_all

  Food.create(id: 1, name: 'ラーメン')
  Food.create(id: 2, name: 'カレー')
end
