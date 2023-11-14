use Music

-- TaiKhoan table
INSERT INTO TaiKhoan (TenTK, MatKhau, VaiTro, TrangThai)
VALUES
  ('user1', 'password1', 0, 1),
  ('admin1', 'adminpass1', 1, 1),
  ('user2', 'password2', 0, 1),
  ('admin2', 'adminpass2', 1, 1),
  ('user3', 'password3', 0, 1);

-- NguoiDung table
INSERT INTO NguoiDung ( HoTen, email, avatar, TenTK)
VALUES
  ('John Doe',  'john.doe@email.com', 'avatar1.jpg', 'user1'),
  ('Jane Doe', 'jane.doe@email.com', 'avatar2.jpg', 'user2'),
  ('Admin User',  'admin.user@email.com', 'admin_avatar.jpg', 'admin1'),
  ('Test User', 'test.user@email.com', 'test_avatar.jpg', 'user3'),
  ('Another User', 'another.user@email.com', 'another_avatar.jpg', 'user1');

-- TheLoai table
INSERT INTO TheLoai (MaTheLoai, TenTheLoai)
VALUES
  ('TL001', 'Pop'),
  ('TL002', 'Rock'),
  ('TL003', 'Hip Hop'),
  ('TL004', 'Country'),
  ('TL005', 'Electronic');

-- BaiHat table
INSERT INTO BaiHat (MaBH, TenBH, CaSi, NhacSi, AmThanh, Anh, LoiBH, ThoiGian, SoLuotThich, SoLuotNghe, MaTheLoai)
VALUES
  ('BH001', 'Song 1', 'Artist 1', 'Composer 1', 'D:\AMusic\tinhphai.mp3', '/icon/Music/nhiptraitim.jpg', 'Lyrics 1', '03:30', 150, 500, 'TL001'),
  ('BH002', 'Song 2', 'Artist 2', 'Composer 2', 'D:\AMusic\tinhbinz.mp3', '/icon/Music/nhiptraitim.jpg', 'Lyrics 2', '04:15', 200, 700, 'TL002'),
  ('BH003', 'Song 3', 'Artist 3', 'Composer 3', 'D:\AMusic\tungquen.mp3', '/icon/Music/nhiptraitim.jpg', 'Lyrics 3', '03:45', 180, 600, 'TL003'),
  ('BH004', 'Song 4', 'Artist 4', 'Composer 4', 'D:\AMusic\mauxanhloinho.mp3', '/icon/Music/nhiptraitim.jpg', 'Lyrics 4', '05:00', 250, 800, 'TL004'),
  ('BH005', 'Song 5', 'Artist 5', 'Composer 5', 'D:\AMusic\leluulyremix.mp3', '/icon/Music/nhiptraitim.jpg', 'Lyrics 5', '03:10', 120, 450, 'TL005');

-- BinhLuan table
INSERT INTO BinhLuan (NoiDung, NgayTao, MaBH, MaND)
VALUES
  ('Great song!', '2023-01-10', 'BH001', 1),
  ('I love the lyrics!', '2023-02-15', 'BH002', 2),
  ('Awesome beat!', '2023-03-20', 'BH003', 3),
  ('Nice melody!', '2023-04-25', 'BH004', 4),
  ('Fantastic composition!', '2023-05-30', 'BH005', 5);

-- Playlist table
INSERT INTO Playlist (MaPlaylist, TenPlaylist, MaBH, MaND)
VALUES
  ('PL001', 'My Favorites', 'BH001', 1),
  ('PL002', 'Road Trip Mix', 'BH002', 2),
  ('PL003', 'Chill Vibes', 'BH003', 3),
  ('PL004', 'Country Hits', 'BH004', 4),
  ('PL005', 'Electronic Beats', 'BH005', 5);
