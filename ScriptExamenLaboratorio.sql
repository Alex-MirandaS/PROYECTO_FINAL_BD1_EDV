select rol.rol_nombre as rol, count(usuario.us_id) as total from usuario
inner join rol on usuario.us_rol = rol.rol_id group by rol.rol_nombre;