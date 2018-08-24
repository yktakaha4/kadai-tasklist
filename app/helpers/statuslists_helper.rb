module StatuslistsHelper
  def set_statuslist
    @status_list = {'ready' => '着手可', 'doing' => '着手中', 'done' => '完了', 'onhold' => '保留'}
  end
end
