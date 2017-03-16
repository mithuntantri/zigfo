INSERT INTO clients (client_id, client_name) VALUES ('1', 'SuperAdmin');
INSERT INTO clients (client_id, client_name) VALUES ('2', 'Admin');
INSERT INTO clients (client_id, client_name) VALUES ('3', 'Pilot');
INSERT INTO clients (client_id, client_name) VALUES ('4', 'Tailor');
INSERT INTO clients (client_id, client_name) VALUES ('5', 'User');

INSERT INTO coupons (coupon_id,description,expiry,only_new,only_first,only_app, min_amount, discount) VALUES ('FIRST100','Rs. 100 OFF on First Order',1477898999,false,true,false, 300, 100);
INSERT INTO coupons (coupon_id,description,expiry,only_new,only_first,only_app, min_amount, discount) VALUES ('SUPERZIG','FLAT 10% OFF on orders more than RS. 300',1477898999,true,false,false, 300, 10);
INSERT INTO coupons (coupon_id,description,expiry,only_new,only_first,only_app, min_amount, discount) VALUES ('APP10','FLAT 10% OFF on all orders using app',1477898999,true,false,true, 300, 10);

-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot1', '9:00 AM to 11:00 AM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot2', '11:00 AM to 1:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot3', '1:00 PM to 3:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot4', '3:00 PM to 5:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot5', '5:00 PM to 7:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot6', '7:00 PM to 9:00 PM');

INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f01', 'Calvin Klein', 'M', 'Shirts','Cotton', '1', '/img/fabrics/f101.jpg', '/img/fabrics/f102.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f02', 'Vimal', 'M', 'Suits','Woollen', '3', '/img/fabrics/f201.jpg', '/img/fabrics/f202.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f03', 'Calvin Klein', 'M', 'Suits','Woollen', '2', '/img/fabrics/f301.jpg', '/img/fabrics/f302.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f04', 'Raymonds', 'M', 'Shirts & Trousers','Cotton', '1', '/img/fabrics/f401.jpg', '/img/fabrics/f402.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f05', 'Raymonds', 'M', 'Shirts & Trousers','Woollen', '2', '/img/fabrics/f501.jpg', '/img/fabrics/f502.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f06', 'Raymonds', 'M', 'Shirts & Trousers','Woollen', '3', '/img/fabrics/f601.jpg', '/img/fabrics/f602.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f07', 'Raymonds', 'M', 'Shirts & Trousers','Cotton', '3', '/img/fabrics/f701.jpg', '/img/fabrics/f702.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f08', 'Vimal', 'F', 'Suits','Woollen', '2', '/img/fabrics/f801.jpg', '/img/fabrics/f802.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f09', 'Raymonds', 'M', 'Suits','Woollen', '1', '/img/fabrics/f901.jpg', '/img/fabrics/f902.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f10', 'Calvin Klein', 'M', 'Shirts','Cotton', '3', '/img/fabrics/f1001.jpg', '/img/fabrics/f1002.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f11', 'Vimal', 'M', 'Suits','Woollen', '3', '/img/fabrics/f1101.jpg', '/img/fabrics/f1102.jpg', 100, 3999, 3799, 'Blue Egyptian Giza Cotton Shirt Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f12', 'Calvin Klein', 'F', 'Suits','Woollen', '2', '/img/fabrics/f1201.jpg', '/img/fabrics/f1202.jpg', 100, 3999, 3799, 'Pink Shirt Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');

-- INSERT INTO credentials (mobileno, client_id, password) VALUES ('1111111111', '3', 'mithun');
-- INSERT INTO credentials (mobileno, client_id, password) VALUES ('1111111112', '3', 'mithun');
--
-- INSERT INTO username_map (username, mobileno) VALUES ('pilot1', '1111111111');
-- INSERT INTO username_map (username, mobileno) VALUES ('pilot2', '1111111112');
--
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app1', 1477333800, 'slot1', 'pilot1');
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app2', 1477420200, 'slot1', 'pilot2');
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app3', 1477420200, 'slot1', 'pilot1');
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app4', 1477506600, 'slot1', 'pilot1');

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('101', 'Slim Fit', 'slim_fit' , 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('102', 'Loose Fit', 'loose_fit', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('103', 'Normal Fit', 'normal_fit', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('201', 'Long Sleeve', 'long_sleeve', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('202', 'Roll-Up Sleeve', 'roll_up_sleeve', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('203', 'Short Sleeve', 'short_sleeve', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('301', 'Italian 1 Button', 'italian_1button', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('302', 'Italian 2 Button', 'italian_2button', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('303', 'French 1 Button', 'french_1button', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('304', 'French 2 Button', 'french_2button', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('305', 'Cut-Away 1 Button', 'cut_away_1button', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('306', 'Cut-Away 2 Button', 'cut_away_2button', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('307', 'Round Collar', 'round_collar', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('308', 'Bottom Down', 'bottom_down', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('309', 'Hidden Button', 'hidden_button', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('310', 'Tab', 'tab', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('311', 'Batman Collar', 'batman_collar', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('312', 'Modern Collar', 'modern_collar', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('313', 'Tuxedo', 'tuxedo', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('314', 'Band', 'band', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('401', 'Single Button Round', 'single_button_round', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('402', 'Single Button Angle', 'single_button_angle', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('403', 'Single Button Square', 'single_button_square', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('404', 'Double Button Round', 'double_button_round', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('405', 'Double Button Angle', 'double_button_angle', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('406', 'Double Button Square', 'double_button_square', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('407', 'French Round', 'french_round', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('408', 'French Angle', 'french_angle', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('409', 'French Square', 'french_square', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('501', 'Single Placket', 'single_placket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('502', 'Box Placket', 'box_placket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('503', 'Hidden Buttons', 'hidden_buttons', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('601', 'No', 'no_seams', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('602', 'Yes', 'seams', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('701', 'No Pocket', 'no_pocket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('702', 'Classic Round', 'classic_round', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('703', 'Classic Angle', 'classic_angle', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('704', 'Diamond Straight', 'diamond_straight', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('705', 'Classic Square', 'classic_square', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('706', 'Round Flap', 'round_flap', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('707', 'Angle Flap', 'angle_flap', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('708', 'Diamond Flap', 'diamond_flap', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('709', 'Round with glass', 'round_with_glass', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('801', 'Left', 'left', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('802', 'Both', 'both', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('901', 'Plain', 'plain', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('902', 'Box Pleat', 'box_pleat', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('903', 'Side Pleats', 'side_pleats', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('904', 'Centre Pleats', 'center_pleats', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1001', 'No', 'no_darts', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1002', 'Yes', 'darts', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1101', 'Tri Tab', 'tri_tab', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1102', 'Straight', 'straight', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1103', 'Straight Vents', 'straight_vents', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1201', 'No', 'no_epualettes', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1202', 'Yes', 'epualettes', 0);

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('101', 'Close Neck', 'Neck Type', 'all', 'blouses/101.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('102', 'Collar Neck', 'Neck Type', 'all', 'blouses/102.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('103', 'Sheer Yoke', 'Neck Type', 'all', 'blouses/103.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('104', 'Regular Neck', 'Neck Type', 'all', 'blouses/104.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('105', 'Off Shoulder', 'Neck Type', 'all', 'blouses/105.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('106', 'Regular Neck', 'Neck Type', 'all', 'blouses/106.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('107', 'Cut-out', 'Neck Type', 'all', 'blouses/107.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('108', 'Regular Neck', 'Neck Type', 'all', 'blouses/107.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('109', 'Closed Neck', 'Neck Type', 'all', 'blouses/107.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('110', 'Sheer Yoke', 'Neck Type', 'all', 'blouses/107.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('201', 'Regular Boat Neck', 'Front', 'Close Neck', 'blouses/201.jpg', 0, '304,401,402,403,503');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('202', 'Off Shoulder Boat Neck', 'Front', 'Close Neck', 'blouses/202.jpg', 0, '302,303,304,305,401,402,403,502,503');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('203', 'Boat Neck with Neck Band', 'Front', 'Close Neck', 'blouses/203.jpg', 0, '304,401,402,403,502,503,703,704');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('204', 'Iewel Neck', 'Front', 'Close Neck', 'blouses/204.jpg', 0, '301,302,303,305,306,307,401,402,403,404,405,406,407,408,409,503,703,704');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('205', 'Iewel Neck Band (Deep ArmHole)', 'Front', 'Close Neck', 'blouses/205.jpg', 0, '301,302,303,305,306,307,401,402,403,404,405,406,407,408,409,503,703,704');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('206', 'Iewel Neck Band (Halter)', 'Front', 'Close Neck', 'blouses/206.jpg', 0, '301,302,303,305,306,307,401,402,403,404,405,406,407,408,409,503,703,704');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('207', 'Chinese Collar Front Button', 'Front', 'Collar Neck', 'blouses/205.jpg', 0, '401,402,403,503,704');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('208', 'Collar Band', 'Front', 'Collar Neck', 'blouses/206.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('209', 'Half Collar', 'Front', 'Collar Neck', 'blouses/207.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('210', 'Collar Band Halter', 'Front', 'Collar Neck', 'blouses/207.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('211', 'Half Collar V Neck', 'Front', 'Collar Neck', 'blouses/207.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('212', 'Reverse Collar', 'Front', 'Collar Neck', 'blouses/208.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('213', 'Boat Neck Straight', 'Front', 'Sheer Yoke', 'blouses/209.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('214', 'Boat Neck Sweetheart', 'Front', 'Sheer Yoke', 'blouses/210.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('215', 'Iewel Neck Sweetheart', 'Front', 'Sheer Yoke', 'blouses/211.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('216', 'Collar Band Sweetheart', 'Front', 'Sheer Yoke', 'blouses/212.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('217', 'V Neck Straight', 'Front', 'Sheer Yoke', 'blouses/212.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('218', 'Collar Band Halter Sweetheart', 'Front', 'Sheer Yoke', 'blouses/212.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('219', 'Scoop Neckline', 'Front', 'Regular Neck', 'blouses/213.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('220', 'Regular U', 'Front', 'Regular Neck', 'blouses/214.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('221', 'Sweetheart With Armband', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('222', 'Armband Straight', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('223', 'Pot Neckline', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('224', 'Dual Body Sweetheart', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('225', 'Round V', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('226', 'Round Sqaure', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('227', 'Curved Sweetheart', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('228', 'Curved Sweetheart', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('229', 'Square Neckline', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('230', 'V Neckline', 'Front', 'Regular Neck', 'blouses/215.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('231', 'Noodle Strap Straight', 'Front', 'Off Shoulder', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('232', 'Noodle Strap Sweetheart', 'Front', 'Off Shoulder', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('233', 'Ruffle Swap Sweetheart', 'Front', 'Off Shoulder', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('234', 'Halter Neck Deep', 'Front', 'Off Shoulder', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('235', 'Halter Neck Straight', 'Front', 'Off Shoulder', 'blouses/215.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('236', 'Crop Top with Boning', 'Front', 'Off Shoulder', 'blouses/215.jpg', 0, '');


INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('301', 'Round V', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('302', 'Round Square', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('303', 'Curved Sweetheart', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('304', 'Classic Sweetheart', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('305', 'Sqaure Neckline', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('306', 'V Neckline', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('307', 'Drop Neckline', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('308', 'Temple Neckline', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('309', 'Inverted U', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('310', 'Wide Circular', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('311', 'Closed Square', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('312', 'Backless with Strings', 'Back', 'Regular Neck', 'blouses/301.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('313', 'Sqaure Cut-out', 'Back', 'Cut-out', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('314', 'Temple Cut-out', 'Back', 'Cut-out', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('315', 'Inverted U Cut-out', 'Back', 'Cut-out', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('316', 'Circular Cut-out', 'Back', 'Cut-out', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('317', 'Inverted V with String', 'Back', 'Cut-out', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('318', 'Diamond Cut-out', 'Back', 'Cut-out', 'blouses/301.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('319', 'Scoop Neckline', 'Back', 'Regular Neck', 'blouses/319.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('320', 'Wide U Neckline', 'Back', 'Regular Neck', 'blouses/320.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('321', 'Armband Staright', 'Back', 'Regular Neck', 'blouses/321.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('322', 'Armband V', 'Back', 'Regular Neck', 'blouses/322.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('323', 'Pot Neckline', 'Back', 'Regular Neck', 'blouses/323.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('324', 'Dualbody Overlap', 'Back', 'Regular Neck', 'blouses/324.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('325', 'Regular BoatNeck', 'Back', 'Closed Neck', 'blouses/325.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('326', 'BoatNeck with KeyHole', 'Back', 'Closed Neck', 'blouses/326.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('327', 'BoatNeck with Full Slit', 'Back', 'Closed Neck', 'blouses/327.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('328', 'Dual Slit', 'Back', 'Closed Neck', 'blouses/328.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('329', 'Wide KeyHole', 'Back', 'Closed Neck', 'blouses/329.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('330', 'Back Buttons', 'Back', 'Closed Neck', 'blouses/330.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('331', 'CollarBand KeyHole', 'Back', 'Sheer Yoke', 'blouses/331.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('332', 'CollarBand Halter KeyHole', 'Back', 'Sheer Yoke', 'blouses/332.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('333', 'CollarBand Scoop Neckline', 'Back', 'Sheer Yoke', 'blouses/333.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('334', 'CollarBand Bare Back', 'Back', 'Sheer Yoke', 'blouses/334.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('335', 'CollarBand Inverted U', 'Back', 'Sheer Yoke', 'blouses/335.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('336', 'CollarBand Inverted V', 'Back', 'Sheer Yoke', 'blouses/336.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('337', 'BoatNeck KeyHole', 'Back', 'Sheer Yoke', 'blouses/337.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('338', 'Round V Neckline', 'Back', 'Sheer Yoke', 'blouses/338.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('339', 'BoatNeck Bare Back', 'Back', 'Sheer Yoke', 'blouses/339.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('340', 'BoatNeck U', 'Back', 'Sheer Yoke', 'blouses/340.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('341', 'BoatNeck Inverted V', 'Back', 'Sheer Yoke', 'blouses/341.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('342', 'Bare Back with Buttons', 'Back', 'Sheer Yoke', 'blouses/342.jpg', 0, '');

-- Sleeves
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('401', 'Noodle Strap', 'Sleeves', 'all', 'blouses/401.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('402', 'Wide Strap', 'Sleeves', 'all', 'blouses/402.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('403', 'Fan Strap', 'Sleeves', 'all', 'blouses/403.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('404', 'Sleeveless', 'Sleeves', 'all', 'blouses/404.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('405', 'Cap', 'Sleeves', 'all', 'blouses/405.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('406', 'Short', 'Sleeves', 'all', 'blouses/406.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('407', 'Elbow', 'Sleeves', 'all', 'blouses/407.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('408', 'Three Fourth', 'Sleeves', 'all', 'blouses/408.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('409', 'Full', 'Sleeves', 'all', 'blouses/409.jpg', 0, '');

-- Blouse Length
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('501', 'Regular', 'Blouse Length', 'all', 'blouses/501.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('502', 'Long', 'Blouse Length', 'all', 'blouses/502.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('503', 'Extra Long', 'Blouse Length', 'all', 'blouses/503.jpg', 0, '');

--Blouse Side
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('601', 'Front', 'Opening', 'all', 'blouses/601.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('602', 'Back', 'Opening', 'all', 'blouses/602.jpg', 0, '');

--Blouse Cut
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('701', 'Princess', 'Cut', 'all', 'blouses/701.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('702', 'Three Dart', 'Cut', 'all', 'blouses/702.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('703', 'With Band', 'Cut', 'all', 'blouses/703.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('704', 'Bustier', 'Cut', 'all', 'blouses/704.jpg', 0, '201');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('705', 'Single Dart', 'Cut', 'all', 'blouses/705.jpg', 0, '');
