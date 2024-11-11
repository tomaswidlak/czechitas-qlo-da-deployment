SET @password = 'UmXe@8F6k*Rt7o'

UPDATE ps_employee
SET passwd = md5(CONCAT('T6GZiTOHe3zA7IQovcQrC0apWSBVxWYJsvRMPqeP13ZuF4Z7biepeQyd', @password))
WHERE email = 'testEmail@test.com';
