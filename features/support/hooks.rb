After do
  $driver.manage.delete_all_cookies
  $driver.local_storage.clear
  sleep 1
end
